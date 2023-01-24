.class public Lzui/appcompat/preference/RadioButtonPreference;
.super Landroidx/preference/TwoStatePreference;
.source "RadioButtonPreference.java"


# instance fields
.field private mBase:Lzui/util/PreferenceBase;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/RadioButtonPreference$1;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/RadioButtonPreference$1;-><init>(Lzui/appcompat/preference/RadioButtonPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/RadioButtonPreference;->mBase:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v1, v1}, Lzui/appcompat/preference/RadioButtonPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/RadioButtonPreference$1;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/RadioButtonPreference$1;-><init>(Lzui/appcompat/preference/RadioButtonPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/RadioButtonPreference;->mBase:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0, v0}, Lzui/appcompat/preference/RadioButtonPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/RadioButtonPreference$1;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/RadioButtonPreference$1;-><init>(Lzui/appcompat/preference/RadioButtonPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/RadioButtonPreference;->mBase:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, v0}, Lzui/appcompat/preference/RadioButtonPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/RadioButtonPreference$1;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/RadioButtonPreference$1;-><init>(Lzui/appcompat/preference/RadioButtonPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/RadioButtonPreference;->mBase:Lzui/util/PreferenceBase;

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lzui/appcompat/preference/RadioButtonPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lzui/appcompat/preference/RadioButtonPreference;)V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lzui/appcompat/preference/RadioButtonPreference;->notifyChanged()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 82
    sget v0, Lzui/platform/R$layout;->preference_appcompat_radiobutton_zui:I

    invoke-virtual {p0, v0}, Lzui/appcompat/preference/RadioButtonPreference;->setLayoutResource(I)V

    .line 83
    iget-object v0, p0, Lzui/appcompat/preference/RadioButtonPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lzui/appcompat/preference/RadioButtonPreference;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_0

    const v0, 0x1020019

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 52
    check-cast p1, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lzui/appcompat/preference/RadioButtonPreference;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 56
    :cond_0
    iget-object p1, p0, Lzui/appcompat/preference/RadioButtonPreference;->mBase:Lzui/util/PreferenceBase;

    iget-object v0, p0, Lzui/appcompat/preference/RadioButtonPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    .line 57
    iget-object p1, p0, Lzui/appcompat/preference/RadioButtonPreference;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lzui/appcompat/preference/RadioButtonPreference;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setActivated(Z)V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lzui/appcompat/preference/RadioButtonPreference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lzui/appcompat/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lzui/appcompat/preference/RadioButtonPreference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lzui/appcompat/preference/PreferenceCategory;

    invoke-virtual {v0}, Lzui/appcompat/preference/PreferenceCategory;->isCardStyle()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    iget-object v1, p0, Lzui/appcompat/preference/RadioButtonPreference;->mBase:Lzui/util/PreferenceBase;

    iget-object v2, p0, Lzui/appcompat/preference/RadioButtonPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, v0}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 75
    iput-object p1, p0, Lzui/appcompat/preference/RadioButtonPreference;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    iget-object v0, p0, Lzui/appcompat/preference/RadioButtonPreference;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 1

    .line 71
    iget-object v0, p0, Lzui/appcompat/preference/RadioButtonPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method
