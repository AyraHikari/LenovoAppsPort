.class public Lzui/appcompat/preference/PreferenceWithArrow;
.super Lzui/appcompat/preference/Preference;
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

.field private mWidgetFrame:Landroid/view/View;

.field private mWidgetVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 67
    invoke-direct {p0, p1}, Lzui/appcompat/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/PreferenceWithArrow$1;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/PreferenceWithArrow$1;-><init>(Lzui/appcompat/preference/PreferenceWithArrow;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mBase:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, p1, v0, v1, v1}, Lzui/appcompat/preference/PreferenceWithArrow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1, p2}, Lzui/appcompat/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/PreferenceWithArrow$1;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/PreferenceWithArrow$1;-><init>(Lzui/appcompat/preference/PreferenceWithArrow;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mBase:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, p2, v0, v0}, Lzui/appcompat/preference/PreferenceWithArrow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lzui/appcompat/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/PreferenceWithArrow$1;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/PreferenceWithArrow$1;-><init>(Lzui/appcompat/preference/PreferenceWithArrow;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mBase:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, p2, p3, v0}, Lzui/appcompat/preference/PreferenceWithArrow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lzui/appcompat/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/PreferenceWithArrow$1;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/PreferenceWithArrow$1;-><init>(Lzui/appcompat/preference/PreferenceWithArrow;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mBase:Lzui/util/PreferenceBase;

    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lzui/appcompat/preference/PreferenceWithArrow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lzui/appcompat/preference/PreferenceWithArrow;)V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lzui/appcompat/preference/PreferenceWithArrow;->notifyChanged()V

    return-void
.end method

.method private isHorzontal(Landroid/content/Context;)Z
    .locals 3

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 161
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 162
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

    .line 125
    iget v0, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mSummaryLocation:I

    return v0
.end method

.method public getWidgetVisibility()I
    .locals 1

    .line 136
    iget v0, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mWidgetVisibility:I

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 72
    invoke-direct {p0, p1}, Lzui/appcompat/preference/PreferenceWithArrow;->isHorzontal(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->preference_title_maxWidth_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzui/appcompat/preference/PreferenceWithArrow;->TITLE_MAX_LENGTH:I

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->preference_title_maxWidth_with_icon_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzui/appcompat/preference/PreferenceWithArrow;->TITLE_WITH_ICON_MAX_LENGHT:I

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->preference_title_maxWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzui/appcompat/preference/PreferenceWithArrow;->TITLE_MAX_LENGTH:I

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->preference_title_maxWidth_with_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzui/appcompat/preference/PreferenceWithArrow;->TITLE_WITH_ICON_MAX_LENGHT:I

    .line 81
    :goto_0
    sget v0, Lzui/platform/R$layout;->zui_preference_label_appcompat:I

    invoke-virtual {p0, v0}, Lzui/appcompat/preference/PreferenceWithArrow;->setLayoutResource(I)V

    .line 82
    sget v0, Lzui/platform/R$layout;->preference_widget_forward:I

    invoke-virtual {p0, v0}, Lzui/appcompat/preference/PreferenceWithArrow;->setWidgetLayoutResource(I)V

    .line 83
    iget-object v0, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 88
    invoke-super {p0, p1}, Lzui/appcompat/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 89
    iget v0, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mSummaryLocation:I

    sget v1, Lzui/appcompat/preference/PreferenceWithArrow;->LOCATION_RIGHT:I

    if-ne v0, v1, :cond_0

    .line 90
    sget v0, Lzui/platform/R$layout;->zui_preference_label_appcompat:I

    invoke-virtual {p0, v0}, Lzui/appcompat/preference/PreferenceWithArrow;->setLayoutResource(I)V

    goto :goto_0

    .line 92
    :cond_0
    sget v0, Lzui/platform/R$layout;->preference_zui:I

    invoke-virtual {p0, v0}, Lzui/appcompat/preference/PreferenceWithArrow;->setLayoutResource(I)V

    .line 94
    :goto_0
    sget v0, Lzui/platform/R$layout;->preference_widget_forward:I

    invoke-virtual {p0, v0}, Lzui/appcompat/preference/PreferenceWithArrow;->setWidgetLayoutResource(I)V

    const v0, 0x1020018

    .line 95
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mWidgetFrame:Landroid/view/View;

    const v0, 0x1020016

    .line 96
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    const v1, 0x1020006

    .line 98
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 101
    sget v1, Lzui/appcompat/preference/PreferenceWithArrow;->TITLE_WITH_ICON_MAX_LENGHT:I

    goto :goto_1

    .line 103
    :cond_1
    sget v1, Lzui/appcompat/preference/PreferenceWithArrow;->TITLE_MAX_LENGTH:I

    .line 105
    :goto_1
    instance-of v2, v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_2

    .line 106
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxWidth(I)V

    goto :goto_2

    .line 107
    :cond_2
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 108
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 112
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mRootView:Landroid/view/View;

    .line 114
    :cond_4
    iget-object p1, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mBase:Lzui/util/PreferenceBase;

    iget-object v0, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    .line 115
    iget-object p1, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 116
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method public setActivated(Z)V
    .locals 3

    .line 141
    invoke-virtual {p0}, Lzui/appcompat/preference/PreferenceWithArrow;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lzui/appcompat/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lzui/appcompat/preference/PreferenceWithArrow;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lzui/appcompat/preference/PreferenceCategory;

    invoke-virtual {v0}, Lzui/appcompat/preference/PreferenceCategory;->isCardStyle()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    iget-object v1, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mBase:Lzui/util/PreferenceBase;

    iget-object v2, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, v0}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 152
    iput-object p1, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    iget-object v0, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 1

    .line 148
    iget-object v0, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mBase:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method

.method public setSummaryLocation(I)V
    .locals 0

    .line 121
    iput p1, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mSummaryLocation:I

    return-void
.end method

.method public setWidgetVisibility(I)V
    .locals 1

    .line 129
    iput p1, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mWidgetVisibility:I

    .line 130
    iget-object v0, p0, Lzui/appcompat/preference/PreferenceWithArrow;->mWidgetFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
