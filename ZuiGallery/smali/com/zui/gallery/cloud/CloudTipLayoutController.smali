.class public Lcom/zui/gallery/cloud/CloudTipLayoutController;
.super Ljava/lang/Object;
.source "CloudTipLayoutController.java"


# instance fields
.field private galleryApp:Lcom/zui/gallery/app/GalleryApp;

.field private mCurrentState:I

.field private mEventHandler:Landroid/os/Handler;

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mNoSpaceCloseIcon:Landroid/view/View;

.field private mNoSpaceLayout:Landroid/view/View;

.field private mNoSpaceUpgradeText:Landroid/view/View;

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mPreviousState:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressLayout:Landroid/view/View;

.field private mProgressText:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mShowInitTip:Z

.field private mShowNoSpaceTip:Z

.field private mSyncCloseIcon:Landroid/view/View;

.field private mSyncMainLayout:Landroid/view/View;

.field private mSyncMainTitle:Landroid/widget/TextView;

.field private mSyncResultLayout:Landroid/view/View;

.field private mSyncResultText:Landroid/widget/TextView;

.field private mSyncRightText:Landroid/widget/TextView;

.field private wasManual:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zui/gallery/app/GalleryApp;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mPreviousState:I

    .line 34
    iput v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mCurrentState:I

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->wasManual:Z

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mShowNoSpaceTip:Z

    .line 43
    iput-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->galleryApp:Lcom/zui/gallery/app/GalleryApp;

    .line 44
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mRootView:Landroid/view/View;

    const v0, 0x7f08033a

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncMainLayout:Landroid/view/View;

    const v0, 0x7f08033c

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncMainTitle:Landroid/widget/TextView;

    const v0, 0x7f08033b

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncRightText:Landroid/widget/TextView;

    const v0, 0x7f080339

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncCloseIcon:Landroid/view/View;

    const v0, 0x7f08025b

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mNoSpaceLayout:Landroid/view/View;

    const v0, 0x7f08025a

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mNoSpaceCloseIcon:Landroid/view/View;

    const v0, 0x7f08025d

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mNoSpaceUpgradeText:Landroid/view/View;

    const v0, 0x7f0802bb

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressText:Landroid/widget/TextView;

    const v0, 0x7f0802b7

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0802ba

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressLayout:Landroid/view/View;

    const v0, 0x7f08033d

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncResultLayout:Landroid/view/View;

    const v0, 0x7f08033e

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncResultText:Landroid/widget/TextView;

    .line 57
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010045

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mInAnimation:Landroid/view/animation/Animation;

    .line 58
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010049

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mOutAnimation:Landroid/view/animation/Animation;

    .line 59
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/cloud/CloudUtils;->getShowInitTip(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mShowInitTip:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/cloud/CloudTipLayoutController;)Lcom/zui/gallery/app/GalleryApp;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->galleryApp:Lcom/zui/gallery/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/cloud/CloudTipLayoutController;)Landroid/os/Handler;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/zui/gallery/cloud/CloudTipLayoutController;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mShowInitTip:Z

    return p1
.end method

.method static synthetic access$302(Lcom/zui/gallery/cloud/CloudTipLayoutController;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mShowNoSpaceTip:Z

    return p1
.end method

.method private clearContentDelayed()V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 292
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setText(Landroid/widget/TextView;I)V
    .locals 0

    .line 289
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 286
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setVisible(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 283
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public clearContent()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncMainLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 272
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mNoSpaceLayout:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 273
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressLayout:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 274
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncResultLayout:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    return-void
.end method

.method public hideTip(Z)V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iput-boolean p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->wasManual:Z

    :cond_1
    return-void
.end method

.method public onScroll()V
    .locals 3

    .line 258
    iget v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mCurrentState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 259
    iput-boolean v1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mShowNoSpaceTip:Z

    .line 260
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->clearContent()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 265
    :cond_1
    iput-boolean v1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mShowInitTip:Z

    .line 266
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->clearContent()V

    :cond_2
    :goto_0
    return-void
.end method

.method public refresh(ILandroid/os/Bundle;)V
    .locals 6

    .line 67
    iput p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mCurrentState:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 210
    :pswitch_0
    invoke-static {}, Lcom/zui/gallery/cloud/CloudUtils;->isRunningSyncAll()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_0

    .line 213
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncMainLayout:Landroid/view/View;

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 214
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mNoSpaceLayout:Landroid/view/View;

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 215
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressLayout:Landroid/view/View;

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 216
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncResultLayout:Landroid/view/View;

    invoke-direct {p0, p2, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 217
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressText:Landroid/widget/TextView;

    const v0, 0x7f10008d

    invoke-direct {p0, p2, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setText(Landroid/widget/TextView;I)V

    .line 218
    invoke-direct {p0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->clearContentDelayed()V

    goto/16 :goto_0

    .line 193
    :pswitch_1
    invoke-static {}, Lcom/zui/gallery/cloud/CloudUtils;->isRunningSyncAll()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncMainLayout:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 197
    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mNoSpaceLayout:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 198
    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressLayout:Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 199
    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncResultLayout:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 200
    sget-object v2, Lcom/zui/gallery/cloud/CloudManager;->BUNDLE_KEY_PROGRESS:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 201
    sget-object v3, Lcom/zui/gallery/cloud/CloudManager;->BUNDLE_KEY_TOTAL:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 203
    iget-object v3, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->galleryApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v4}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f10008e

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v3, p2}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 204
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 181
    :pswitch_2
    invoke-static {}, Lcom/zui/gallery/cloud/CloudUtils;->isRunningSyncAll()Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_0

    .line 184
    :cond_2
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncMainLayout:Landroid/view/View;

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 185
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mNoSpaceLayout:Landroid/view/View;

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 186
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressLayout:Landroid/view/View;

    invoke-direct {p0, p2, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 187
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncResultLayout:Landroid/view/View;

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 188
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressText:Landroid/widget/TextView;

    const v2, 0x7f10008c

    invoke-direct {p0, p2, v2}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setText(Landroid/widget/TextView;I)V

    .line 189
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 190
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 170
    :pswitch_3
    sget-object v2, Lcom/zui/gallery/cloud/CloudManager;->BUNDLE_KEY_IS_SUSPENDED:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 171
    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncMainLayout:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 172
    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mNoSpaceLayout:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 173
    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressLayout:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 174
    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncResultLayout:Landroid/view/View;

    xor-int/2addr p2, v0

    invoke-direct {p0, v1, p2}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 175
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncResultText:Landroid/widget/TextView;

    const v0, 0x7f10007d

    invoke-direct {p0, p2, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setText(Landroid/widget/TextView;I)V

    .line 176
    invoke-direct {p0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->clearContentDelayed()V

    goto/16 :goto_0

    .line 159
    :pswitch_4
    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncMainLayout:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 160
    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mNoSpaceLayout:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 161
    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressLayout:Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 162
    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncResultLayout:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 163
    sget-object v2, Lcom/zui/gallery/cloud/CloudManager;->BUNDLE_KEY_PROGRESS:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 164
    sget-object v3, Lcom/zui/gallery/cloud/CloudManager;->BUNDLE_KEY_TOTAL:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 165
    iget-object v3, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->galleryApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v4}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f10007f

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v3, p2}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 166
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 151
    :pswitch_5
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncMainLayout:Landroid/view/View;

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 152
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mNoSpaceLayout:Landroid/view/View;

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 153
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressLayout:Landroid/view/View;

    invoke-direct {p0, p2, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 154
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncResultLayout:Landroid/view/View;

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 155
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressText:Landroid/widget/TextView;

    const v0, 0x7f10007e

    invoke-direct {p0, p2, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setText(Landroid/widget/TextView;I)V

    .line 156
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 142
    :pswitch_6
    iget p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mPreviousState:I

    const/4 v1, 0x7

    if-eq p2, v1, :cond_3

    const/16 v1, 0xa

    if-eq p2, v1, :cond_3

    if-eq p2, v0, :cond_3

    if-nez p2, :cond_6

    .line 146
    :cond_3
    invoke-direct {p0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->clearContentDelayed()V

    goto/16 :goto_0

    .line 116
    :pswitch_7
    iget-boolean p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mShowNoSpaceTip:Z

    if-nez p2, :cond_4

    return-void

    .line 119
    :cond_4
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncMainLayout:Landroid/view/View;

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 120
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mNoSpaceLayout:Landroid/view/View;

    invoke-direct {p0, p2, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 121
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressLayout:Landroid/view/View;

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 122
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncResultLayout:Landroid/view/View;

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 123
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mNoSpaceUpgradeText:Landroid/view/View;

    new-instance v0, Lcom/zui/gallery/cloud/CloudTipLayoutController$3;

    invoke-direct {v0, p0}, Lcom/zui/gallery/cloud/CloudTipLayoutController$3;-><init>(Lcom/zui/gallery/cloud/CloudTipLayoutController;)V

    invoke-direct {p0, p2, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mNoSpaceCloseIcon:Landroid/view/View;

    new-instance v0, Lcom/zui/gallery/cloud/CloudTipLayoutController$4;

    invoke-direct {v0, p0}, Lcom/zui/gallery/cloud/CloudTipLayoutController$4;-><init>(Lcom/zui/gallery/cloud/CloudTipLayoutController;)V

    invoke-direct {p0, p2, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 71
    :pswitch_8
    iget-boolean p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mShowInitTip:Z

    if-nez p2, :cond_5

    .line 73
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->clearContent()V

    return-void

    .line 77
    :cond_5
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->galleryApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/zui/gallery/cloud/CloudUtils;->setShowInitTip(Landroid/content/Context;Z)V

    .line 78
    iput-boolean v1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mShowInitTip:Z

    .line 80
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncMainLayout:Landroid/view/View;

    invoke-direct {p0, p2, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 81
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mNoSpaceLayout:Landroid/view/View;

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 82
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mProgressLayout:Landroid/view/View;

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 83
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncResultLayout:Landroid/view/View;

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 84
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncMainTitle:Landroid/widget/TextView;

    const v1, 0x7f100089

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setText(Landroid/widget/TextView;I)V

    .line 85
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncCloseIcon:Landroid/view/View;

    invoke-direct {p0, p2, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 86
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncRightText:Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setVisible(Landroid/view/View;Z)V

    .line 87
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncRightText:Landroid/widget/TextView;

    new-instance v0, Lcom/zui/gallery/cloud/CloudTipLayoutController$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/cloud/CloudTipLayoutController$1;-><init>(Lcom/zui/gallery/cloud/CloudTipLayoutController;)V

    invoke-direct {p0, p2, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mSyncCloseIcon:Landroid/view/View;

    new-instance v0, Lcom/zui/gallery/cloud/CloudTipLayoutController$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/cloud/CloudTipLayoutController$2;-><init>(Lcom/zui/gallery/cloud/CloudTipLayoutController;)V

    invoke-direct {p0, p2, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 227
    :cond_6
    :goto_0
    iput p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mPreviousState:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mEventHandler:Landroid/os/Handler;

    return-void
.end method

.method public showTip(Z)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    iget-boolean v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->wasManual:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 237
    :cond_1
    iput-boolean p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->wasManual:Z

    :cond_2
    return-void
.end method

.method public showTipDelayed()V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
