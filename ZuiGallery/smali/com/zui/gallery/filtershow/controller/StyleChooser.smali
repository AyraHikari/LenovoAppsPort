.class public Lcom/zui/gallery/filtershow/controller/StyleChooser;
.super Ljava/lang/Object;
.source "StyleChooser.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/Control;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field protected mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

.field private mIconButton:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mLayoutID:I

.field protected mLinearLayout:Landroid/widget/LinearLayout;

.field protected mParameter:Lcom/zui/gallery/filtershow/controller/ParameterStyles;

.field private mTopView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StyleChooser"

    .line 22
    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->LOGTAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mIconButton:Ljava/util/Vector;

    const v0, 0x7f0b0051

    .line 28
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mLayoutID:I

    return-void
.end method


# virtual methods
.method public RestoreScreenChange()V
    .locals 0

    return-void
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mTopView:Landroid/view/View;

    return-object v0
.end method

.method public setPrameter(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterStyles;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterStyles;

    .line 81
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/StyleChooser;->updateUI()V

    return-void
.end method

.method public setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
    .locals 4

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 33
    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 35
    check-cast p2, Lcom/zui/gallery/filtershow/controller/ParameterStyles;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterStyles;

    const-string p2, "layout_inflater"

    .line 37
    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 38
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mLayoutID:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mTopView:Landroid/view/View;

    const p2, 0x7f080220

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 40
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mTopView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterStyles;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/controller/ParameterStyles;->getNumberOfStyles()I

    move-result p1

    .line 42
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mIconButton:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 43
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06017c

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 45
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    :goto_0
    if-ge p2, p1, :cond_0

    .line 47
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 48
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x106000d

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 51
    iget-object v2, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mIconButton:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v2, Lcom/zui/gallery/filtershow/controller/StyleChooser$1;

    invoke-direct {v2, p0, p2}, Lcom/zui/gallery/filtershow/controller/StyleChooser$1;-><init>(Lcom/zui/gallery/filtershow/controller/StyleChooser;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v2, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    iget-object v2, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterStyles;

    new-instance v3, Lcom/zui/gallery/filtershow/controller/StyleChooser$2;

    invoke-direct {v3, p0, v0}, Lcom/zui/gallery/filtershow/controller/StyleChooser$2;-><init>(Lcom/zui/gallery/filtershow/controller/StyleChooser;Landroid/widget/ImageButton;)V

    invoke-interface {v2, p2, v3}, Lcom/zui/gallery/filtershow/controller/ParameterStyles;->getIcon(ILcom/zui/gallery/filtershow/controller/BitmapCaller;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateUI()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterStyles;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method
