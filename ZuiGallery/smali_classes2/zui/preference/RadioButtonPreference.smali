.class public Lzui/preference/RadioButtonPreference;
.super Landroid/preference/TwoStatePreference;
.source "RadioButtonPreference.java"


# instance fields
.field private mBase:Lzui/util/PreferenceBase;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lzui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008e

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lzui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lzui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/RadioButtonPreference$1;

    invoke-direct {v1, p0}, Lzui/preference/RadioButtonPreference$1;-><init>(Lzui/preference/RadioButtonPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/RadioButtonPreference;->mBase:Lzui/util/PreferenceBase;

    .line 42
    sget v0, Lzui/platform/R$layout;->preference_radiobutton_zui:I

    invoke-virtual {p0, v0}, Lzui/preference/RadioButtonPreference;->setLayoutResource(I)V

    .line 43
    iget-object v0, p0, Lzui/preference/RadioButtonPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lzui/preference/RadioButtonPreference;)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lzui/preference/RadioButtonPreference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    const v0, 0x1020019

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lzui/preference/RadioButtonPreference;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 74
    :cond_0
    iget-object p1, p0, Lzui/preference/RadioButtonPreference;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lzui/preference/RadioButtonPreference;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 61
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzui/preference/RadioButtonPreference;->mRootView:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lzui/preference/RadioButtonPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    .line 63
    iget-object p1, p0, Lzui/preference/RadioButtonPreference;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public setActivated(Z)V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lzui/preference/RadioButtonPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lzui/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lzui/preference/RadioButtonPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lzui/preference/PreferenceCategory;

    invoke-virtual {v0}, Lzui/preference/PreferenceCategory;->isCardStyle()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    iget-object v1, p0, Lzui/preference/RadioButtonPreference;->mBase:Lzui/util/PreferenceBase;

    iget-object v2, p0, Lzui/preference/RadioButtonPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, v0}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 92
    iput-object p1, p0, Lzui/preference/RadioButtonPreference;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object v0, p0, Lzui/preference/RadioButtonPreference;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 1

    .line 88
    iget-object v0, p0, Lzui/preference/RadioButtonPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method
