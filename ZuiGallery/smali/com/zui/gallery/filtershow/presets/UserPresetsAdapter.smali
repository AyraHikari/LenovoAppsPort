.class public Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UserPresetsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter$UserPresetViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/zui/gallery/filtershow/category/Action;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnFocusChangeListener;"
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "UserPresetsAdapter"


# instance fields
.field private mChangedRepresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentEditText:Landroid/widget/EditText;

.field private mDeletedRepresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field private mIconSize:I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/16 p2, 0xa0

    .line 41
    iput p2, p0, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->mIconSize:I

    .line 42
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->mDeletedRepresentations:Ljava/util/ArrayList;

    .line 44
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->mChangedRepresentations:Ljava/util/ArrayList;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06012d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->mIconSize:I

    return-void
.end method

.method private changePreset(Lcom/zui/gallery/filtershow/category/Action;)V
    .locals 1

    .line 74
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setName(Ljava/lang/String;)V

    .line 76
    instance-of p1, v0, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->mChangedRepresentations:Ljava/util/ArrayList;

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private deletePreset(Lcom/zui/gallery/filtershow/category/Action;)V
    .locals 2

    .line 65
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 66
    instance-of v1, v0, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->mDeletedRepresentations:Ljava/util/ArrayList;

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->remove(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateActionFromEditText(Landroid/widget/EditText;)V
    .locals 2

    .line 165
    invoke-virtual {p1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/category/Action;

    .line 166
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/category/Action;->setName(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->changePreset(Lcom/zui/gallery/filtershow/category/Action;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/zui/gallery/filtershow/category/Action;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/category/Action;->setAdapter(Landroid/widget/ArrayAdapter;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    return-void
.end method

.method public clearChangedRepresentations()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->mChangedRepresentations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearDeletedRepresentations()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->mDeletedRepresentations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getChangedRepresentations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->mChangedRepresentations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeletedRepresentations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->mDeletedRepresentations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 97
    iget-object p2, p0, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0b0060

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 98
    new-instance p3, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter$UserPresetViewHolder;

    invoke-direct {p3}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter$UserPresetViewHolder;-><init>()V

    const v0, 0x7f0801ee

    .line 99
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter$UserPresetViewHolder;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f080167

    .line 100
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p3, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter$UserPresetViewHolder;->editText:Landroid/widget/EditText;

    const v0, 0x7f080135

    .line 101
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p3, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter$UserPresetViewHolder;->deleteButton:Landroid/widget/ImageButton;

    .line 102
    iget-object v0, p3, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter$UserPresetViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p3, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter$UserPresetViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 104
    iget-object v0, p3, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter$UserPresetViewHolder;->deleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter$UserPresetViewHolder;

    .line 109
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/category/Action;

    .line 110
    iget-object v0, p3, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter$UserPresetViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->mIconSize:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, v2}, Lcom/zui/gallery/filtershow/category/Action;->setImageFrame(Landroid/graphics/Rect;I)V

    .line 115
    :cond_1
    iget-object v0, p3, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter$UserPresetViewHolder;->deleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p3, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter$UserPresetViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 117
    iget-object p3, p3, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter$UserPresetViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080135

    if-eq v0, v1, :cond_1

    const v1, 0x7f080167

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/category/Action;

    .line 146
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->deletePreset(Lcom/zui/gallery/filtershow/category/Action;)V

    :goto_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080167

    if-eq v0, v1, :cond_0

    return-void

    .line 156
    :cond_0
    check-cast p1, Landroid/widget/EditText;

    if-nez p2, :cond_1

    .line 158
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->updateActionFromEditText(Landroid/widget/EditText;)V

    goto :goto_0

    .line 160
    :cond_1
    iput-object p1, p0, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->mCurrentEditText:Landroid/widget/EditText;

    :goto_0
    return-void
.end method

.method public updateCurrent()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->mCurrentEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->updateActionFromEditText(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method
