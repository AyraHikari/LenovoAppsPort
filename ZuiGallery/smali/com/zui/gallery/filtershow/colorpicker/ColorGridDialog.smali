.class public Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;
.super Landroid/app/Dialog;
.source "ColorGridDialog.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ColorGridDialog"


# instance fields
.field mCallback:Lcom/zui/gallery/filtershow/colorpicker/RGBListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/gallery/filtershow/colorpicker/RGBListener;)V
    .locals 7

    .line 36
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;->mCallback:Lcom/zui/gallery/filtershow/colorpicker/RGBListener;

    const p1, 0x7f10009a

    .line 38
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;->setTitle(I)V

    const p1, 0x7f0b004c

    .line 39
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;->setContentView(I)V

    const p1, 0x7f0801b2

    .line 40
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 41
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;->getButtons(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 45
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 46
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    rem-int/lit8 v4, v2, 0x5

    mul-int/lit16 v4, v4, 0x168

    const/4 v5, 0x5

    div-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v0, v1

    .line 48
    div-int/lit8 v4, v2, 0x5

    int-to-float v4, v4

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v4, v6

    const/4 v6, 0x1

    aput v4, v0, v6

    const/4 v4, 0x2

    if-ge v2, v5, :cond_1

    int-to-float v5, v2

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    goto :goto_1

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    aput v5, v0, v4

    .line 50
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    const v5, 0xffffff

    and-int/2addr v4, v5

    const/high16 v5, -0x56000000

    or-int/2addr v4, v5

    .line 51
    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    .line 52
    new-instance v6, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$1;

    invoke-direct {v6, p0, v4}, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$1;-><init>(Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;I)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_2
    new-instance p2, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$2;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$2;-><init>(Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getButtons(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 75
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 76
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 77
    instance-of v3, v2, Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 78
    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 80
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;->getButtons(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public showColorPicker()V
    .locals 3

    .line 87
    new-instance v0, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$3;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog$3;-><init>(Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;)V

    .line 99
    new-instance v1, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorGridDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V

    .line 100
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/colorpicker/ColorPickerDialog;->show()V

    return-void
.end method
