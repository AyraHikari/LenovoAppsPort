.class public Lzui/preference/CheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CheckBoxPreference.java"


# instance fields
.field private mBase:Lzui/util/PreferenceBase;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 55
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/CheckBoxPreference$1;

    invoke-direct {v1, p0}, Lzui/preference/CheckBoxPreference$1;-><init>(Lzui/preference/CheckBoxPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/CheckBoxPreference;->mBase:Lzui/util/PreferenceBase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, p1, v1, v2, v2}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/CheckBoxPreference$1;

    invoke-direct {v1, p0}, Lzui/preference/CheckBoxPreference$1;-><init>(Lzui/preference/CheckBoxPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/CheckBoxPreference;->mBase:Lzui/util/PreferenceBase;

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, p1, p2, v1, v1}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/CheckBoxPreference$1;

    invoke-direct {v1, p0}, Lzui/preference/CheckBoxPreference$1;-><init>(Lzui/preference/CheckBoxPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/CheckBoxPreference;->mBase:Lzui/util/PreferenceBase;

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, p1, p2, p3, v1}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/CheckBoxPreference$1;

    invoke-direct {v1, p0}, Lzui/preference/CheckBoxPreference$1;-><init>(Lzui/preference/CheckBoxPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/CheckBoxPreference;->mBase:Lzui/util/PreferenceBase;

    .line 41
    invoke-virtual {v0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lzui/preference/CheckBoxPreference;)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lzui/preference/CheckBoxPreference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lzui/preference/CheckBoxPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->onBindView(Landroid/view/View;)V

    .line 72
    iget-object p1, p0, Lzui/preference/CheckBoxPreference;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lzui/preference/CheckBoxPreference;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 62
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzui/preference/CheckBoxPreference;->mRootView:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lzui/preference/CheckBoxPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->onCreateView(Landroid/view/View;)V

    .line 64
    iget-object p1, p0, Lzui/preference/CheckBoxPreference;->mBase:Lzui/util/PreferenceBase;

    iget-object v0, p0, Lzui/preference/CheckBoxPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    .line 65
    iget-object p1, p0, Lzui/preference/CheckBoxPreference;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public setActivated(Z)V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lzui/preference/CheckBoxPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lzui/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lzui/preference/CheckBoxPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lzui/preference/PreferenceCategory;

    invoke-virtual {v0}, Lzui/preference/PreferenceCategory;->isCardStyle()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    iget-object v1, p0, Lzui/preference/CheckBoxPreference;->mBase:Lzui/util/PreferenceBase;

    iget-object v2, p0, Lzui/preference/CheckBoxPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, v0}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 90
    iput-object p1, p0, Lzui/preference/CheckBoxPreference;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v0, p0, Lzui/preference/CheckBoxPreference;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 1

    .line 86
    iget-object v0, p0, Lzui/preference/CheckBoxPreference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method
