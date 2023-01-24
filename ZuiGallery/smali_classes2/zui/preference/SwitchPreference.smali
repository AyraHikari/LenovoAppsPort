.class public Lzui/preference/SwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "SwitchPreference.java"


# instance fields
.field private mBase:Lzui/util/PreferenceBase;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mRootView:Landroid/view/View;

.field private mSwitch:Lzui/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 60
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/SwitchPreference$1;

    invoke-direct {v1, p0}, Lzui/preference/SwitchPreference$1;-><init>(Lzui/preference/SwitchPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/SwitchPreference;->mBase:Lzui/util/PreferenceBase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-virtual {v0, p1, v1, v2, v2}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/SwitchPreference$1;

    invoke-direct {v1, p0}, Lzui/preference/SwitchPreference$1;-><init>(Lzui/preference/SwitchPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/SwitchPreference;->mBase:Lzui/util/PreferenceBase;

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, p1, p2, v1, v1}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/SwitchPreference$1;

    invoke-direct {v1, p0}, Lzui/preference/SwitchPreference$1;-><init>(Lzui/preference/SwitchPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/SwitchPreference;->mBase:Lzui/util/PreferenceBase;

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, p1, p2, p3, v1}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/SwitchPreference$1;

    invoke-direct {v1, p0}, Lzui/preference/SwitchPreference$1;-><init>(Lzui/preference/SwitchPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/SwitchPreference;->mBase:Lzui/util/PreferenceBase;

    .line 46
    invoke-virtual {v0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lzui/preference/SwitchPreference;)V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lzui/preference/SwitchPreference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x1020040

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    instance-of v0, p1, Lzui/widget/Switch;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Lzui/widget/Switch;

    iput-object p1, p0, Lzui/preference/SwitchPreference;->mSwitch:Lzui/widget/Switch;

    .line 79
    :cond_0
    iget-object p1, p0, Lzui/preference/SwitchPreference;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lzui/preference/SwitchPreference;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 67
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzui/preference/SwitchPreference;->mRootView:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lzui/preference/SwitchPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    .line 69
    iget-object p1, p0, Lzui/preference/SwitchPreference;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public setActivated(Z)V
    .locals 3

    .line 94
    invoke-virtual {p0}, Lzui/preference/SwitchPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lzui/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lzui/preference/SwitchPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lzui/preference/PreferenceCategory;

    invoke-virtual {v0}, Lzui/preference/PreferenceCategory;->isCardStyle()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    iget-object v1, p0, Lzui/preference/SwitchPreference;->mBase:Lzui/util/PreferenceBase;

    iget-object v2, p0, Lzui/preference/SwitchPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, v0}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 105
    iput-object p1, p0, Lzui/preference/SwitchPreference;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 106
    iget-object v0, p0, Lzui/preference/SwitchPreference;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 86
    iget-object v0, p0, Lzui/preference/SwitchPreference;->mSwitch:Lzui/widget/Switch;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Lzui/widget/Switch;->setForceVibration(Z)V

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 1

    .line 101
    iget-object v0, p0, Lzui/preference/SwitchPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method
