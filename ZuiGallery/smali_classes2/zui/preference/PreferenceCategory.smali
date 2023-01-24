.class public Lzui/preference/PreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "PreferenceCategory.java"


# instance fields
.field private mBase:Lzui/util/PreferenceBase;

.field private mContext:Landroid/content/Context;

.field private mIsCardStyle:Z

.field private mLayoutId:I

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lzui/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    sget v0, Lzui/platform/R$attr;->preferenceCategoryXStyle:I

    invoke-direct {p0, p1, p2, v0}, Lzui/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3, v0}, Lzui/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/PreferenceCategory$1;

    invoke-direct {v1, p0}, Lzui/preference/PreferenceCategory$1;-><init>(Lzui/preference/PreferenceCategory;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/PreferenceCategory;->mBase:Lzui/util/PreferenceBase;

    .line 51
    iput-object p1, p0, Lzui/preference/PreferenceCategory;->mContext:Landroid/content/Context;

    .line 52
    sget-object v0, Lzui/platform/R$styleable;->PreferenceCategoryX:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    sget v1, Lzui/platform/R$styleable;->PreferenceCategoryX_cardStyle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lzui/preference/PreferenceCategory;->mIsCardStyle:Z

    .line 55
    sget v1, Lzui/platform/R$styleable;->PreferenceCategoryX_android_layout:I

    sget v3, Lzui/platform/R$layout;->preference_category_x:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lzui/preference/PreferenceCategory;->mLayoutId:I

    .line 57
    sget v1, Lzui/platform/R$styleable;->PreferenceCategoryX_android_selectable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lzui/preference/PreferenceCategory;->setSelectable(Z)V

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    iget-object v0, p0, Lzui/preference/PreferenceCategory;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lzui/preference/PreferenceCategory;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lzui/preference/PreferenceCategory;->notifyChanged()V

    return-void
.end method

.method private updatePreference(Landroid/preference/Preference;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 169
    instance-of v0, p1, Lzui/preference/Preference;

    if-eqz v0, :cond_0

    .line 170
    check-cast p1, Lzui/preference/Preference;

    invoke-virtual {p1, p2}, Lzui/preference/Preference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 171
    :cond_0
    instance-of v0, p1, Lzui/preference/PreferenceWithArrow;

    if-eqz v0, :cond_1

    .line 172
    check-cast p1, Lzui/preference/PreferenceWithArrow;

    invoke-virtual {p1, p2}, Lzui/preference/PreferenceWithArrow;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 173
    :cond_1
    instance-of v0, p1, Lzui/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 174
    check-cast p1, Lzui/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Lzui/preference/SwitchPreference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 175
    :cond_2
    instance-of v0, p1, Lzui/preference/SwitchPreferenceX;

    if-eqz v0, :cond_3

    .line 176
    check-cast p1, Lzui/preference/SwitchPreferenceX;

    invoke-virtual {p1, p2}, Lzui/preference/SwitchPreferenceX;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 177
    :cond_3
    instance-of v0, p1, Lzui/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 178
    check-cast p1, Lzui/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Lzui/preference/CheckBoxPreference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 179
    :cond_4
    instance-of v0, p1, Lzui/preference/RadioButtonPreference;

    if-eqz v0, :cond_5

    .line 180
    check-cast p1, Lzui/preference/RadioButtonPreference;

    invoke-virtual {p1, p2}, Lzui/preference/RadioButtonPreference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 181
    :cond_5
    instance-of v0, p1, Lzui/preference/InLineEditTextPreference;

    if-eqz v0, :cond_6

    .line 182
    check-cast p1, Lzui/preference/InLineEditTextPreference;

    invoke-virtual {p1, p2}, Lzui/preference/InLineEditTextPreference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 183
    :cond_6
    instance-of v0, p1, Lzui/preference/DialogPreference;

    if-eqz v0, :cond_7

    .line 184
    check-cast p1, Lzui/preference/DialogPreference;

    invoke-virtual {p1, p2}, Lzui/preference/DialogPreference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .line 81
    iget v0, p0, Lzui/preference/PreferenceCategory;->mLayoutId:I

    return v0
.end method

.method public isCardStyle()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lzui/preference/PreferenceCategory;->mIsCardStyle:Z

    return v0
.end method

.method protected onAttachedToActivity()V
    .locals 4

    .line 131
    invoke-super {p0}, Landroid/preference/PreferenceCategory;->onAttachedToActivity()V

    .line 132
    invoke-virtual {p0}, Lzui/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 133
    iget-boolean v1, p0, Lzui/preference/PreferenceCategory;->mIsCardStyle:Z

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    invoke-static {}, Lzui/util/CommonUtils;->isPadProduct()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 136
    iget-object v0, p0, Lzui/preference/PreferenceCategory;->mContext:Landroid/content/Context;

    sget v2, Lzui/platform/R$drawable;->preference_item_card_whole_bg:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v1}, Lzui/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lzui/preference/PreferenceCategory;->updatePreference(Landroid/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_4

    .line 140
    invoke-virtual {p0, v1}, Lzui/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_1

    .line 143
    iget-object v2, p0, Lzui/preference/PreferenceCategory;->mContext:Landroid/content/Context;

    sget v3, Lzui/platform/R$drawable;->preference_item_card_top_bg:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_2

    .line 145
    iget-object v2, p0, Lzui/preference/PreferenceCategory;->mContext:Landroid/content/Context;

    sget v3, Lzui/platform/R$drawable;->preference_item_card_bottom_bg:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 147
    :cond_2
    iget-object v2, p0, Lzui/preference/PreferenceCategory;->mContext:Landroid/content/Context;

    sget v3, Lzui/platform/R$drawable;->preference_item_card_middle_bg:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 149
    :goto_1
    invoke-virtual {p0, v1}, Lzui/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lzui/preference/PreferenceCategory;->updatePreference(Landroid/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    .line 96
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    const v0, 0x1020010

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1020016

    .line 98
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 99
    sget v2, Lzui/platform/R$id;->divider:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    if-eqz v2, :cond_5

    .line 105
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 107
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    if-eqz v2, :cond_5

    .line 112
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    .line 116
    iget-boolean v0, p0, Lzui/preference/PreferenceCategory;->mIsCardStyle:Z

    if-nez v0, :cond_4

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lzui/preference/PreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lzui/platform/R$dimen;->preference_card_top_padding:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 123
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 86
    iget-object v0, p0, Lzui/preference/PreferenceCategory;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 89
    iget v1, p0, Lzui/preference/PreferenceCategory;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzui/preference/PreferenceCategory;->mRootView:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lzui/preference/PreferenceCategory;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    .line 91
    iget-object p1, p0, Lzui/preference/PreferenceCategory;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public setActivated(Z)V
    .locals 3

    .line 157
    iget-object v0, p0, Lzui/preference/PreferenceCategory;->mBase:Lzui/util/PreferenceBase;

    iget-object v1, p0, Lzui/preference/PreferenceCategory;->mRootView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0

    .line 76
    iput p1, p0, Lzui/preference/PreferenceCategory;->mLayoutId:I

    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 1

    .line 161
    iget-object v0, p0, Lzui/preference/PreferenceCategory;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method
