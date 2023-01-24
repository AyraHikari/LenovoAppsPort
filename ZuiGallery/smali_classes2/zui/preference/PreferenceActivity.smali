.class public Lzui/preference/PreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;
    }
.end annotation


# static fields
.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"


# instance fields
.field private mCustomized:Z

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mReflectObj:Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .line 161
    iget-boolean v0, p0, Lzui/preference/PreferenceActivity;->mCustomized:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lzui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lzui/preference/PreferenceActivity;->mReflectObj:Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;

    invoke-virtual {v0}, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lzui/preference/PreferenceActivity;->mCustomized:Z

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lzui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 153
    :cond_1
    iget-object v0, p0, Lzui/preference/PreferenceActivity;->mReflectObj:Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;

    invoke-virtual {v0}, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    new-instance p1, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;

    invoke-direct {p1}, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;-><init>()V

    iput-object p1, p0, Lzui/preference/PreferenceActivity;->mReflectObj:Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;

    .line 59
    invoke-virtual {p1, p0}, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;->setRealObject(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lzui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":android:show_fragment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lzui/preference/PreferenceActivity;->mReflectObj:Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;

    invoke-virtual {v0}, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;->getHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    .line 64
    sget p1, Lzui/platform/R$layout;->preference_list_content_single_zui:I

    .line 65
    invoke-virtual {p0, p1}, Lzui/preference/PreferenceActivity;->setContentView(I)V

    .line 66
    sget p1, Lzui/platform/R$id;->list_footer:I

    invoke-virtual {p0, p1}, Lzui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lzui/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lzui/preference/PreferenceActivity;->mCustomized:Z

    .line 69
    invoke-virtual {p0}, Lzui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_prefs_show_button_bar"

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    sget v0, Lzui/platform/R$id;->button_bar:I

    invoke-virtual {p0, v0}, Lzui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    sget v0, Lzui/platform/R$id;->back_button:I

    invoke-virtual {p0, v0}, Lzui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v2, "back_button_label"

    .line 75
    invoke-static {v2}, Lzui/util/CommonUtils;->getAndroidInternalResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v2, Lzui/preference/PreferenceActivity$1;

    invoke-direct {v2, p0}, Lzui/preference/PreferenceActivity$1;-><init>(Lzui/preference/PreferenceActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget v2, Lzui/platform/R$id;->skip_button:I

    invoke-virtual {p0, v2}, Lzui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const-string v3, "skip_button_label"

    .line 83
    invoke-static {v3}, Lzui/util/CommonUtils;->getAndroidInternalResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v3, Lzui/preference/PreferenceActivity$2;

    invoke-direct {v3, p0}, Lzui/preference/PreferenceActivity$2;-><init>(Lzui/preference/PreferenceActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    sget v3, Lzui/platform/R$id;->next_button:I

    invoke-virtual {p0, v3}, Lzui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lzui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    const-string v4, "next_button_label"

    .line 91
    invoke-static {v4}, Lzui/util/CommonUtils;->getAndroidInternalResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, p0, Lzui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    new-instance v4, Lzui/preference/PreferenceActivity$3;

    invoke-direct {v4, p0}, Lzui/preference/PreferenceActivity$3;-><init>(Lzui/preference/PreferenceActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "extra_prefs_set_next_text"

    .line 100
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_1

    .line 101
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    iget-object v3, p0, Lzui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v4, p0, Lzui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const-string v3, "extra_prefs_set_back_text"

    .line 108
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 109
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    const-string v0, "extra_prefs_show_skip"

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 117
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 125
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 126
    iget-object v0, p0, Lzui/preference/PreferenceActivity;->mReflectObj:Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1}, Lzui/preference/PreferenceActivity$ReflectPreferenceAcitivy;->setRealObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 4

    .line 136
    iget-boolean v0, p0, Lzui/preference/PreferenceActivity;->mCustomized:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lzui/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 138
    iget-object v0, p0, Lzui/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->setListFooter(Landroid/view/View;)V

    :goto_0
    return-void
.end method
