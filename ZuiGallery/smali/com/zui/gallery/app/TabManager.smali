.class public Lcom/zui/gallery/app/TabManager;
.super Ljava/lang/Object;
.source "TabManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/TabManager$TabIndex;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mAlbumSetTab:Landroid/view/View;

.field private mAlbumSetTextView:Landroid/widget/TextView;

.field private mContainerAnimIn:Landroid/view/animation/Animation;

.field private mContainerAnimOut:Landroid/view/animation/Animation;

.field private mCursorWidth:I

.field private mRoot:Landroid/view/View;

.field private mStateManager:Lcom/zui/gallery/app/StateManager;

.field private mTabIndex:Lcom/zui/gallery/app/TabManager$TabIndex;

.field private mTimeTab:Landroid/view/View;

.field private mTimeTextView:Landroid/widget/TextView;

.field private tabBarHeight:I

.field private tab_albumset_view:Landroid/widget/ImageView;

.field private tab_photo_view:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_TIME:Lcom/zui/gallery/app/TabManager$TabIndex;

    iput-object v0, p0, Lcom/zui/gallery/app/TabManager;->mTabIndex:Lcom/zui/gallery/app/TabManager$TabIndex;

    .line 31
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/zui/gallery/app/TabManager;->mContainerAnimIn:Landroid/view/animation/Animation;

    .line 32
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/zui/gallery/app/TabManager;->mContainerAnimOut:Landroid/view/animation/Animation;

    .line 39
    iput-object p1, p0, Lcom/zui/gallery/app/TabManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 40
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/TabManager;->mStateManager:Lcom/zui/gallery/app/StateManager;

    .line 41
    invoke-direct {p0}, Lcom/zui/gallery/app/TabManager;->initTabView()V

    return-void
.end method

.method private initTabView()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f0801b6

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/TabManager;->mRoot:Landroid/view/View;

    const v1, 0x7f080344

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/TabManager;->mTimeTab:Landroid/view/View;

    const v1, 0x7f080343

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/TabManager;->tab_photo_view:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mTimeTab:Landroid/view/View;

    const v1, 0x7f080345

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/app/TabManager;->mTimeTextView:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mTimeTab:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mRoot:Landroid/view/View;

    const v1, 0x7f080340

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/TabManager;->mAlbumSetTab:Landroid/view/View;

    const v1, 0x7f080342

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/TabManager;->tab_albumset_view:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mAlbumSetTab:Landroid/view/View;

    const v1, 0x7f080341

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/app/TabManager;->mAlbumSetTextView:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mAlbumSetTab:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060307

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/TabManager;->tabBarHeight:I

    return-void
.end method

.method private reset()V
    .locals 0

    return-void
.end method

.method private switchTo(Lcom/zui/gallery/app/TabManager$TabIndex;)V
    .locals 1

    .line 141
    iput-object p1, p0, Lcom/zui/gallery/app/TabManager;->mTabIndex:Lcom/zui/gallery/app/TabManager$TabIndex;

    .line 142
    sget-object v0, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_TIME:Lcom/zui/gallery/app/TabManager$TabIndex;

    if-ne p1, v0, :cond_0

    .line 143
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mStateManager:Lcom/zui/gallery/app/StateManager;

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->switchToMainPage()V

    goto :goto_0

    .line 144
    :cond_0
    sget-object v0, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_ALBUM:Lcom/zui/gallery/app/TabManager$TabIndex;

    if-ne p1, v0, :cond_1

    .line 145
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mStateManager:Lcom/zui/gallery/app/StateManager;

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->switchToFolderPage()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getTabHeight()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/zui/gallery/app/TabManager;->tabBarHeight:I

    return v0
.end method

.method public getmRoot()Landroid/view/View;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080344

    if-ne p1, v0, :cond_1

    .line 153
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mTabIndex:Lcom/zui/gallery/app/TabManager$TabIndex;

    sget-object v0, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_TIME:Lcom/zui/gallery/app/TabManager$TabIndex;

    if-ne p1, v0, :cond_0

    return-void

    .line 155
    :cond_0
    sget-object p1, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_TIME:Lcom/zui/gallery/app/TabManager$TabIndex;

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/TabManager;->switchTo(Lcom/zui/gallery/app/TabManager$TabIndex;)V

    goto :goto_1

    :cond_1
    const v0, 0x7f080340

    if-ne p1, v0, :cond_5

    .line 157
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mTabIndex:Lcom/zui/gallery/app/TabManager$TabIndex;

    sget-object v0, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_ALBUM:Lcom/zui/gallery/app/TabManager$TabIndex;

    if-ne p1, v0, :cond_4

    .line 160
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 162
    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getStateCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 164
    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 166
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onBackPressed()V

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 170
    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isViewContent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 172
    instance-of v0, p1, Lcom/zui/gallery/app/AlbumPage;

    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onBackPressed()V

    :cond_3
    :goto_0
    return-void

    .line 182
    :cond_4
    sget-object p1, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_ALBUM:Lcom/zui/gallery/app/TabManager$TabIndex;

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/TabManager;->switchTo(Lcom/zui/gallery/app/TabManager$TabIndex;)V

    .line 185
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mTabIndex:Lcom/zui/gallery/app/TabManager$TabIndex;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/TabManager;->updateTabIndex(Lcom/zui/gallery/app/TabManager$TabIndex;)V

    return-void
.end method

.method public setTabIndicatorText(Ljava/lang/String;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    .line 117
    instance-of v0, v0, Lcom/zui/gallery/app/AlbumSetPage;

    if-eqz v0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mAlbumSetTextView:Landroid/widget/TextView;

    const v0, 0x7f100281

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const-string v0, "continuous_IMG_"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mAlbumSetTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setmRoot(Landroid/view/View;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/zui/gallery/app/TabManager;->mRoot:Landroid/view/View;

    return-void
.end method

.method public showTab(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 129
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mContainerAnimIn:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 130
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mContainerAnimIn:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mRoot:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 134
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mContainerAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 135
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mContainerAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 136
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mRoot:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public switchTab(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 198
    sget-object p1, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_TIME:Lcom/zui/gallery/app/TabManager$TabIndex;

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/TabManager;->switchTo(Lcom/zui/gallery/app/TabManager$TabIndex;)V

    .line 199
    sget-object p1, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_TIME:Lcom/zui/gallery/app/TabManager$TabIndex;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/TabManager;->updateTabIndex(Lcom/zui/gallery/app/TabManager$TabIndex;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 201
    sget-object p1, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_ALBUM:Lcom/zui/gallery/app/TabManager$TabIndex;

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/TabManager;->switchTo(Lcom/zui/gallery/app/TabManager$TabIndex;)V

    .line 202
    sget-object p1, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_ALBUM:Lcom/zui/gallery/app/TabManager$TabIndex;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/TabManager;->updateTabIndex(Lcom/zui/gallery/app/TabManager$TabIndex;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateTabIndex(Lcom/zui/gallery/app/TabManager$TabIndex;)V
    .locals 3

    .line 83
    invoke-direct {p0}, Lcom/zui/gallery/app/TabManager;->reset()V

    .line 84
    iput-object p1, p0, Lcom/zui/gallery/app/TabManager;->mTabIndex:Lcom/zui/gallery/app/TabManager$TabIndex;

    .line 85
    sget-object v0, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_TIME:Lcom/zui/gallery/app/TabManager$TabIndex;

    const v1, 0x7f05016d

    const v2, 0x7f05016e

    if-ne p1, v0, :cond_0

    .line 87
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->tab_photo_view:Landroid/widget/ImageView;

    const v0, 0x7f070379

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 88
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->tab_albumset_view:Landroid/widget/ImageView;

    const v0, 0x7f070375

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 89
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mTimeTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mAlbumSetTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 93
    :cond_0
    sget-object v0, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_ALBUM:Lcom/zui/gallery/app/TabManager$TabIndex;

    if-ne p1, v0, :cond_1

    .line 95
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->tab_albumset_view:Landroid/widget/ImageView;

    const v0, 0x7f070374

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 96
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->tab_photo_view:Landroid/widget/ImageView;

    const v0, 0x7f07037a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 97
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mAlbumSetTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object p1, p0, Lcom/zui/gallery/app/TabManager;->mTimeTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/gallery/app/TabManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method
