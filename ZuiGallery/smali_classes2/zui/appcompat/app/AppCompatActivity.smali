.class public Lzui/appcompat/app/AppCompatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AppCompatActivity.java"


# instance fields
.field private mContent:Landroid/widget/FrameLayout;

.field private mIsHorizontal:Z

.field private mListView:Landroid/widget/ListView;

.field private mToolbar:Lzui/appcompat/widget/ZuiAppcompatToolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private ensureListView()V
    .locals 2

    .line 140
    iget-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lzui/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x102000a

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lzui/widget/ListViewX;

    if-nez v1, :cond_1

    .line 148
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->mListView:Landroid/widget/ListView;

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 111
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 112
    iget-object v1, p0, Lzui/appcompat/app/AppCompatActivity;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    .line 114
    instance-of v2, v1, Lzui/preference/SwitchPreferenceX;

    if-eqz v2, :cond_0

    .line 115
    check-cast v1, Lzui/preference/SwitchPreferenceX;

    invoke-virtual {v1, p1}, Lzui/preference/SwitchPreferenceX;->onKey(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 116
    :cond_0
    instance-of v2, v1, Lzui/preference/InLineEditTextPreference;

    if-eqz v2, :cond_1

    .line 117
    check-cast v1, Lzui/preference/InLineEditTextPreference;

    invoke-virtual {v1, p1}, Lzui/preference/InLineEditTextPreference;->onKey(Landroid/view/KeyEvent;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public getZuiToolbar()Lzui/appcompat/widget/ZuiAppcompatToolbar;
    .locals 1

    .line 124
    iget-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->mToolbar:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lzui/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lzui/appcompat/app/AppCompatActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lzui/appcompat/app/AppCompatActivity;->mIsHorizontal:Z

    if-eqz v0, :cond_1

    .line 51
    sget v0, Lzui/platform/R$style;->Theme_AppCompat_Zui_NoActionBar_Horizontal:I

    invoke-virtual {p0, v0}, Lzui/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_1

    .line 53
    :cond_1
    sget v0, Lzui/platform/R$style;->Theme_AppCompat_Zui_NoActionBar:I

    invoke-virtual {p0, v0}, Lzui/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 55
    :goto_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lzui/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_2

    .line 58
    sget p1, Lzui/platform/R$layout;->appcompat_activity_zui:I

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 59
    sget p1, Lzui/platform/R$id;->contentPanel:I

    invoke-virtual {p0, p1}, Lzui/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lzui/appcompat/app/AppCompatActivity;->mContent:Landroid/widget/FrameLayout;

    .line 60
    sget p1, Lzui/platform/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lzui/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzui/appcompat/widget/ZuiAppcompatToolbar;

    iput-object p1, p0, Lzui/appcompat/app/AppCompatActivity;->mToolbar:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    .line 61
    invoke-virtual {p0, p1}, Lzui/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :cond_2
    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 104
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    .line 105
    invoke-direct {p0}, Lzui/appcompat/app/AppCompatActivity;->ensureListView()V

    return-object p1
.end method

.method protected onResume()V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lzui/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lzui/appcompat/app/AppCompatActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lzui/appcompat/app/AppCompatActivity;->mIsHorizontal:Z

    .line 69
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public setActionBarHorizontalPaddings(II)V
    .locals 3

    .line 128
    iget-boolean v0, p0, Lzui/appcompat/app/AppCompatActivity;->mIsHorizontal:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->mToolbar:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    if-eqz v0, :cond_3

    if-gtz p1, :cond_0

    if-lez p2, :cond_3

    .line 130
    :cond_0
    iget-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->mToolbar:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getPaddingStart()I

    move-result p1

    :goto_0
    iget-object v1, p0, Lzui/appcompat/app/AppCompatActivity;->mToolbar:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    .line 131
    invoke-virtual {v1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getPaddingTop()I

    move-result v1

    if-lez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lzui/appcompat/app/AppCompatActivity;->mToolbar:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    .line 132
    invoke-virtual {p2}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getPaddingEnd()I

    move-result p2

    :goto_1
    iget-object v2, p0, Lzui/appcompat/app/AppCompatActivity;->mToolbar:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    .line 133
    invoke-virtual {v2}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->getPaddingBottom()I

    move-result v2

    .line 130
    invoke-virtual {v0, p1, v1, p2, v2}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 74
    iget-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->mContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 76
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lzui/appcompat/app/AppCompatActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 78
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->mContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 86
    iget-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->mContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 96
    iget-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method
