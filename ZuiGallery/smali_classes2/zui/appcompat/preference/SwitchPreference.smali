.class public Lzui/appcompat/preference/SwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "SwitchPreference.java"


# instance fields
.field private mBase:Lzui/util/PreferenceBase;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mRootView:Landroid/view/View;

.field private mSwitch:Lzui/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 61
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/SwitchPreference$1;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/SwitchPreference$1;-><init>(Lzui/appcompat/preference/SwitchPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/SwitchPreference;->mBase:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, v0, v1, v1}, Lzui/appcompat/preference/SwitchPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/SwitchPreference$1;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/SwitchPreference$1;-><init>(Lzui/appcompat/preference/SwitchPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/SwitchPreference;->mBase:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0, v0}, Lzui/appcompat/preference/SwitchPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/SwitchPreference$1;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/SwitchPreference$1;-><init>(Lzui/appcompat/preference/SwitchPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/SwitchPreference;->mBase:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3, v0}, Lzui/appcompat/preference/SwitchPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/SwitchPreference$1;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/SwitchPreference$1;-><init>(Lzui/appcompat/preference/SwitchPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/SwitchPreference;->mBase:Lzui/util/PreferenceBase;

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lzui/appcompat/preference/SwitchPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lzui/appcompat/preference/SwitchPreference;)V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lzui/appcompat/preference/SwitchPreference;->notifyChanged()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 133
    sget v0, Lzui/platform/R$layout;->preference_appcompat_zui:I

    invoke-virtual {p0, v0}, Lzui/appcompat/preference/SwitchPreference;->setLayoutResource(I)V

    .line 134
    sget v0, Lzui/platform/R$layout;->preference_widget_switch_zui:I

    invoke-virtual {p0, v0}, Lzui/appcompat/preference/SwitchPreference;->setWidgetLayoutResource(I)V

    .line 135
    iget-object v0, p0, Lzui/appcompat/preference/SwitchPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 68
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020006

    .line 69
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lzui/appcompat/preference/SwitchPreference;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_1

    const v0, 0x1020040

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 81
    instance-of v0, p1, Lzui/widget/Switch;

    if-eqz v0, :cond_1

    .line 82
    check-cast p1, Lzui/widget/Switch;

    iput-object p1, p0, Lzui/appcompat/preference/SwitchPreference;->mSwitch:Lzui/widget/Switch;

    .line 86
    :cond_1
    iget-object p1, p0, Lzui/appcompat/preference/SwitchPreference;->mBase:Lzui/util/PreferenceBase;

    iget-object v0, p0, Lzui/appcompat/preference/SwitchPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    .line 87
    iget-object p1, p0, Lzui/appcompat/preference/SwitchPreference;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lzui/appcompat/preference/SwitchPreference;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setActivated(Z)V
    .locals 3

    .line 114
    invoke-virtual {p0}, Lzui/appcompat/preference/SwitchPreference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lzui/appcompat/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lzui/appcompat/preference/SwitchPreference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lzui/appcompat/preference/PreferenceCategory;

    invoke-virtual {v0}, Lzui/appcompat/preference/PreferenceCategory;->isCardStyle()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    iget-object v1, p0, Lzui/appcompat/preference/SwitchPreference;->mBase:Lzui/util/PreferenceBase;

    iget-object v2, p0, Lzui/appcompat/preference/SwitchPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, v0}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 125
    iput-object p1, p0, Lzui/appcompat/preference/SwitchPreference;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 126
    iget-object v0, p0, Lzui/appcompat/preference/SwitchPreference;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 94
    iget-object v0, p0, Lzui/appcompat/preference/SwitchPreference;->mSwitch:Lzui/widget/Switch;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lzui/widget/Switch;->setForceVibration(Z)V

    .line 97
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 106
    iget-object v0, p0, Lzui/appcompat/preference/SwitchPreference;->mSwitch:Lzui/widget/Switch;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 107
    invoke-virtual {v0, p2}, Lzui/widget/Switch;->setForceVibration(Z)V

    .line 109
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 1

    .line 121
    iget-object v0, p0, Lzui/appcompat/preference/SwitchPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method
