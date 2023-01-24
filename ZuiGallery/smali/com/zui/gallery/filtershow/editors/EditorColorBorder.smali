.class public Lcom/zui/gallery/filtershow/editors/EditorColorBorder;
.super Lcom/zui/gallery/filtershow/editors/ParametricEditor;
.source "EditorColorBorder.java"


# static fields
.field public static final ID:I = 0x7f080171

.field private static final LOGTAG:Ljava/lang/String; = "EditorColorBorder"


# instance fields
.field mBasColors:[I

.field private mParameterString:Ljava/lang/String;

.field private mSelectedColorButton:I

.field private mTabletUI:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f080171

    .line 62
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;-><init>(I)V

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 50
    sget v1, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->DEFAULT_MENU_COLOR1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->DEFAULT_MENU_COLOR2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->DEFAULT_MENU_COLOR3:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->DEFAULT_MENU_COLOR4:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->DEFAULT_MENU_COLOR5:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mBasColors:[I

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/editors/EditorColorBorder;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->showPopupMenu(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private showPopupMenu(Landroid/widget/LinearLayout;)V
    .locals 3

    const v0, 0x7f080060

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 131
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const v1, 0x7f0c0001

    .line 132
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 131
    invoke-virtual {p1, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 133
    new-instance p1, Lcom/zui/gallery/filtershow/editors/EditorColorBorder$2;

    invoke-direct {p1, p0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder$2;-><init>(Lcom/zui/gallery/filtershow/editors/EditorColorBorder;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 141
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 142
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->onShowMenu(Landroid/widget/PopupMenu;)V

    return-void
.end method


# virtual methods
.method public calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->getColorBorderRep()Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    move-result-object p1

    const-string p2, ""

    if-nez p1, :cond_0

    return-object p2

    .line 71
    :cond_0
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mParameterString:Ljava/lang/String;

    if-nez p3, :cond_1

    .line 72
    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mParameterString:Ljava/lang/String;

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getValueString()Ljava/lang/String;

    move-result-object p1

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mParameterString:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public clearFrame()V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->commitLocalRepresentation()V

    return-void
.end method

.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 81
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-direct {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mView:Landroid/view/View;

    .line 82
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method getColorBorderRep()Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 205
    instance-of v1, v0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    if-eqz v1, :cond_0

    .line 206
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 3

    const v0, 0x7f080060

    .line 108
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 109
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mContext:Landroid/content/Context;

    const v2, 0x7f100098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorColorBorder$1;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder$1;-><init>(Lcom/zui/gallery/filtershow/editors/EditorColorBorder;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 3

    .line 87
    invoke-super {p0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->reflectCurrentFilter()V

    .line 88
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    .line 92
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->useCompact(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mTabletUI:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->setColorBorderRepresentation(Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;)V

    :cond_0
    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->setPramMode(I)V

    .line 99
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mContext:Landroid/content/Context;

    const v2, 0x7f100098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mParameterString:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mEditControl:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getCurrentParam()Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mEditControl:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->control(Lcom/zui/gallery/filtershow/controller/Parameter;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected selectMenuItem(Landroid/view/MenuItem;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/zui/gallery/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;

    .line 147
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->getColorBorderRep()Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->setPramMode(I)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    .line 159
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->setPramMode(I)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    .line 162
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->setPramMode(I)V

    goto :goto_0

    .line 153
    :pswitch_3
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->clearFrame()V

    .line 165
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0800e7

    if-eq v1, v2, :cond_1

    .line 166
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mParameterString:Ljava/lang/String;

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    instance-of p1, p1, Lcom/zui/gallery/filtershow/controller/ColorChooser;

    if-eqz p1, :cond_2

    .line 169
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    check-cast p1, Lcom/zui/gallery/filtershow/controller/ColorChooser;

    .line 170
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/ColorChooser;->getColorSet()[I

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mBasColors:[I

    .line 172
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mEditControl:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 173
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getCurrentParam()Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mEditControl:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->control(Lcom/zui/gallery/filtershow/controller/Parameter;Landroid/view/View;)V

    .line 175
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    instance-of p1, p1, Lcom/zui/gallery/filtershow/controller/ColorChooser;

    if-eqz p1, :cond_4

    .line 176
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    check-cast p1, Lcom/zui/gallery/filtershow/controller/ColorChooser;

    .line 177
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mBasColors:[I

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/controller/ColorChooser;->setColorSet([I)V

    .line 179
    :cond_4
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->updateText()V

    .line 180
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/controller/Control;->updateUI()V

    .line 181
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0800e7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->useCompact(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_0
    const p1, 0x7f0802b0

    .line 194
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mSeekBar:Landroid/widget/SeekBar;

    .line 195
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_1

    .line 196
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 199
    :cond_1
    new-instance p1, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0, p2}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;-><init>(Lcom/zui/gallery/filtershow/editors/EditorColorBorder;Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->mTabletUI:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    return-void
.end method

.method public showsSeekBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
