.class public Lzui/preference/PreferenceWithArrow;
.super Lzui/preference/Preference;
.source "PreferenceWithArrow.java"


# static fields
.field public static LOCATION_BOTTOM:I = 0x1

.field public static LOCATION_RIGHT:I

.field private static TITLE_MAX_LENGTH:I

.field private static TITLE_WITH_ICON_MAX_LENGHT:I


# instance fields
.field private mBase:Lzui/util/PreferenceBase;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mRootView:Landroid/view/View;

.field private mSummaryLocation:I

.field private mWidgetFrame:Landroid/widget/LinearLayout;

.field private mWidgetVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 69
    invoke-direct {p0, p1}, Lzui/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/PreferenceWithArrow$1;

    invoke-direct {v1, p0}, Lzui/preference/PreferenceWithArrow$1;-><init>(Lzui/preference/PreferenceWithArrow;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/PreferenceWithArrow;->mBase:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, v0, v1, v1}, Lzui/preference/PreferenceWithArrow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 64
    invoke-direct {p0, p1, p2}, Lzui/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/PreferenceWithArrow$1;

    invoke-direct {v1, p0}, Lzui/preference/PreferenceWithArrow$1;-><init>(Lzui/preference/PreferenceWithArrow;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/PreferenceWithArrow;->mBase:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0, v0}, Lzui/preference/PreferenceWithArrow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lzui/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/PreferenceWithArrow$1;

    invoke-direct {v1, p0}, Lzui/preference/PreferenceWithArrow$1;-><init>(Lzui/preference/PreferenceWithArrow;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/PreferenceWithArrow;->mBase:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3, v0}, Lzui/preference/PreferenceWithArrow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lzui/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/PreferenceWithArrow$1;

    invoke-direct {v1, p0}, Lzui/preference/PreferenceWithArrow$1;-><init>(Lzui/preference/PreferenceWithArrow;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/PreferenceWithArrow;->mBase:Lzui/util/PreferenceBase;

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lzui/preference/PreferenceWithArrow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lzui/preference/PreferenceWithArrow;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lzui/preference/PreferenceWithArrow;->notifyChanged()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 148
    invoke-direct {p0, p1}, Lzui/preference/PreferenceWithArrow;->isHorzontal(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->preference_title_maxWidth_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzui/preference/PreferenceWithArrow;->TITLE_MAX_LENGTH:I

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->preference_title_maxWidth_with_icon_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzui/preference/PreferenceWithArrow;->TITLE_WITH_ICON_MAX_LENGHT:I

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->preference_title_maxWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzui/preference/PreferenceWithArrow;->TITLE_MAX_LENGTH:I

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->preference_title_maxWidth_with_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzui/preference/PreferenceWithArrow;->TITLE_WITH_ICON_MAX_LENGHT:I

    .line 157
    :goto_0
    iget-object v0, p0, Lzui/preference/PreferenceWithArrow;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private isHorzontal(Landroid/content/Context;)Z
    .locals 3

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 162
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 163
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public getSummaryLocation()I
    .locals 1

    .line 113
    iget v0, p0, Lzui/preference/PreferenceWithArrow;->mSummaryLocation:I

    return v0
.end method

.method public getWidgetVisibility()I
    .locals 1

    .line 124
    iget v0, p0, Lzui/preference/PreferenceWithArrow;->mWidgetVisibility:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Lzui/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x1020016

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020018

    .line 90
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lzui/preference/PreferenceWithArrow;->mWidgetFrame:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const v1, 0x1020006

    .line 92
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 95
    sget p1, Lzui/preference/PreferenceWithArrow;->TITLE_WITH_ICON_MAX_LENGHT:I

    goto :goto_0

    .line 97
    :cond_0
    sget p1, Lzui/preference/PreferenceWithArrow;->TITLE_MAX_LENGTH:I

    .line 99
    :goto_0
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 100
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 103
    :cond_1
    iget-object p1, p0, Lzui/preference/PreferenceWithArrow;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lzui/preference/PreferenceWithArrow;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 75
    iget v0, p0, Lzui/preference/PreferenceWithArrow;->mSummaryLocation:I

    sget v1, Lzui/preference/PreferenceWithArrow;->LOCATION_RIGHT:I

    if-ne v0, v1, :cond_0

    .line 76
    sget v0, Lzui/platform/R$layout;->zui_preference_label:I

    invoke-virtual {p0, v0}, Lzui/preference/PreferenceWithArrow;->setLayoutResource(I)V

    goto :goto_0

    .line 78
    :cond_0
    sget v0, Lzui/platform/R$layout;->preference_zui:I

    invoke-virtual {p0, v0}, Lzui/preference/PreferenceWithArrow;->setLayoutResource(I)V

    .line 80
    :goto_0
    sget v0, Lzui/platform/R$layout;->preference_widget_forward:I

    invoke-virtual {p0, v0}, Lzui/preference/PreferenceWithArrow;->setWidgetLayoutResource(I)V

    .line 81
    invoke-super {p0, p1}, Lzui/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzui/preference/PreferenceWithArrow;->mRootView:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lzui/preference/PreferenceWithArrow;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    .line 83
    iget-object p1, p0, Lzui/preference/PreferenceWithArrow;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public setActivated(Z)V
    .locals 3

    .line 136
    invoke-virtual {p0}, Lzui/preference/PreferenceWithArrow;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lzui/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lzui/preference/PreferenceWithArrow;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lzui/preference/PreferenceCategory;

    invoke-virtual {v0}, Lzui/preference/PreferenceCategory;->isCardStyle()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    iget-object v1, p0, Lzui/preference/PreferenceWithArrow;->mBase:Lzui/util/PreferenceBase;

    iget-object v2, p0, Lzui/preference/PreferenceWithArrow;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, v0}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 128
    iput-object p1, p0, Lzui/preference/PreferenceWithArrow;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    iget-object v0, p0, Lzui/preference/PreferenceWithArrow;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 1

    .line 143
    iget-object v0, p0, Lzui/preference/PreferenceWithArrow;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method

.method public setSummaryLocation(I)V
    .locals 0

    .line 109
    iput p1, p0, Lzui/preference/PreferenceWithArrow;->mSummaryLocation:I

    return-void
.end method

.method public setWidgetVisibility(I)V
    .locals 1

    .line 117
    iput p1, p0, Lzui/preference/PreferenceWithArrow;->mWidgetVisibility:I

    .line 118
    iget-object v0, p0, Lzui/preference/PreferenceWithArrow;->mWidgetFrame:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
