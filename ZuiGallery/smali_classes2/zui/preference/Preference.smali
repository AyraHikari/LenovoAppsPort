.class public Lzui/preference/Preference;
.super Landroid/preference/Preference;
.source "Preference.java"


# instance fields
.field private mBase:Lzui/util/PreferenceBase;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 56
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/Preference$1;

    invoke-direct {v1, p0}, Lzui/preference/Preference$1;-><init>(Lzui/preference/Preference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/Preference;->mBase:Lzui/util/PreferenceBase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, p1, v1, v2, v2}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/Preference$1;

    invoke-direct {v1, p0}, Lzui/preference/Preference$1;-><init>(Lzui/preference/Preference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/Preference;->mBase:Lzui/util/PreferenceBase;

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, p1, p2, v1, v1}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/Preference$1;

    invoke-direct {v1, p0}, Lzui/preference/Preference$1;-><init>(Lzui/preference/Preference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/Preference;->mBase:Lzui/util/PreferenceBase;

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, p1, p2, p3, v1}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/Preference$1;

    invoke-direct {v1, p0}, Lzui/preference/Preference$1;-><init>(Lzui/preference/Preference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/Preference;->mBase:Lzui/util/PreferenceBase;

    .line 42
    invoke-virtual {v0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lzui/preference/Preference;)V
    .locals 0

    .line 29
    invoke-virtual {p0}, Lzui/preference/Preference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method protected autoAdjustHeight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 80
    iget-object p1, p0, Lzui/preference/Preference;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lzui/preference/Preference;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 72
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzui/preference/Preference;->mRootView:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lzui/preference/Preference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    .line 74
    iget-object p1, p0, Lzui/preference/Preference;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public setActivated(Z)V
    .locals 3

    .line 87
    invoke-virtual {p0}, Lzui/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lzui/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lzui/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lzui/preference/PreferenceCategory;

    invoke-virtual {v0}, Lzui/preference/PreferenceCategory;->isCardStyle()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 90
    :goto_0
    iget-object v1, p0, Lzui/preference/Preference;->mBase:Lzui/util/PreferenceBase;

    iget-object v2, p0, Lzui/preference/Preference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, v0}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 98
    iput-object p1, p0, Lzui/preference/Preference;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    iget-object v0, p0, Lzui/preference/Preference;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 1

    .line 94
    iget-object v0, p0, Lzui/preference/Preference;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method
