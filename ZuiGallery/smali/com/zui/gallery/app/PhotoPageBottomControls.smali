.class public Lcom/zui/gallery/app/PhotoPageBottomControls;
.super Ljava/lang/Object;
.source "PhotoPageBottomControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;
    }
.end annotation


# static fields
.field private static final CONTAINER_ANIM_DURATION_MS:I = 0xc8

.field private static final CONTROL_ANIM_DURATION_MS:I = 0x96


# instance fields
.field private deletAnimContainer:Landroid/widget/LinearLayout;

.field private deleteAnimView1:Landroid/view/View;

.field private deleteAnimView2:Landroid/view/View;

.field private deleteView:Landroid/view/View;

.field private favorite_view:Landroid/widget/ImageView;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContainerAnimIn:Landroid/view/animation/Animation;

.field private mContainerAnimOut:Landroid/view/animation/Animation;

.field private mContainerVisible:Z

.field private mContext:Landroid/content/Context;

.field private mContinuousShotMode:Z

.field private mControlsVisible:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDelegate:Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;

.field private mParentLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;Landroid/content/Context;Landroid/widget/RelativeLayout;ZZ)V
    .locals 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    .line 58
    iput-boolean p4, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainerVisible:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    .line 61
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainerAnimIn:Landroid/view/animation/Animation;

    .line 62
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainerAnimOut:Landroid/view/animation/Animation;

    .line 68
    iput-boolean p4, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContinuousShotMode:Z

    .line 87
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mDelegate:Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;

    .line 88
    iput-object p3, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    const-string p1, "layout_inflater"

    .line 91
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 93
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const p3, 0x7f0b00a9

    goto :goto_0

    :cond_0
    const p3, 0x7f0b00a8

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, v0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    if-eqz p5, :cond_1

    const/4 p3, 0x4

    .line 100
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 107
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    .line 108
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 109
    invoke-virtual {p5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainerAnimIn:Landroid/view/animation/Animation;

    const-wide/16 p3, 0xc8

    invoke-virtual {p1, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 115
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainerAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 117
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mDelegate:Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;

    invoke-interface {p1}, Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;->refreshBottomControlsWhenReady()V

    .line 119
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    const p3, 0x7f08013a

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->deleteView:Landroid/view/View;

    .line 120
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    const p3, 0x7f080138

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->deletAnimContainer:Landroid/widget/LinearLayout;

    .line 121
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    const p3, 0x7f080136

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->deleteAnimView1:Landroid/view/View;

    .line 122
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    const p3, 0x7f0801a1

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->favorite_view:Landroid/widget/ImageView;

    .line 124
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    const p3, 0x7f080137

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->deleteAnimView2:Landroid/view/View;

    .line 125
    iput-object p2, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/PhotoPageBottomControls;)Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->deleteView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/PhotoPageBottomControls;)Landroid/widget/LinearLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->deletAnimContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private static getControlAnimForVisibility(Z)Landroid/view/animation/Animation;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p0, :cond_0

    .line 79
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    .line 80
    :cond_0
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_0
    const-wide/16 v0, 0x96

    .line 81
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method


# virtual methods
.method public animDelete(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->deleteView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->deletAnimContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    const v0, 0x7f010022

    goto :goto_0

    :cond_1
    const v0, 0x7f010021

    .line 345
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 346
    new-instance v1, Lcom/zui/gallery/app/PhotoPageBottomControls$1;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/app/PhotoPageBottomControls$1;-><init>(Lcom/zui/gallery/app/PhotoPageBottomControls;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 366
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->deleteAnimView1:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public cleanup()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 306
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public enableView(IZ)V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 327
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 328
    invoke-virtual {v1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 329
    check-cast v1, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 331
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected hide()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public isContinuousShotMode()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContinuousShotMode:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 312
    iget-boolean v1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainerVisible:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mDelegate:Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;->onBottomControlClicked(I)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 7

    .line 157
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPageBottomControls;->isContinuousShotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mDelegate:Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;

    invoke-interface {v0}, Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;->canDisplayBottomControls()Z

    move-result v0

    .line 162
    iget-boolean v1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainerVisible:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPageBottomControls;->show()V

    goto :goto_1

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPageBottomControls;->hide()V

    .line 169
    :goto_1
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainerVisible:Z

    .line 171
    :cond_3
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainerVisible:Z

    if-nez v0, :cond_4

    return-void

    .line 175
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 176
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mDelegate:Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;

    .line 177
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    .line 176
    invoke-interface {v3, v4}, Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;->canDisplayBottomControl(I)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_5

    .line 179
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 181
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v4, :cond_6

    .line 182
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    .line 187
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    const v6, 0x7f0801a0

    if-eq v5, v6, :cond_9

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const v4, 0x7f08030b

    .line 199
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 201
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_2

    :pswitch_1
    const v5, 0x7f080293

    .line 232
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_7

    .line 234
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 236
    :cond_7
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :pswitch_2
    const v3, 0x7f080248

    .line 243
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 244
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :pswitch_3
    const v4, 0x7f08016c

    .line 206
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 207
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 221
    :pswitch_4
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->deletAnimContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_8

    .line 222
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    const v4, 0x7f08013a

    .line 225
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 226
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_9
    const v4, 0x7f0801a1

    .line 191
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 194
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_2

    .line 249
    :cond_a
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f080290
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshForWeixinVideo()V
    .locals 8

    const-string v0, ""

    const-string v1, "================"

    .line 253
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mDelegate:Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;

    invoke-interface {v0}, Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;->canDisplayBottomControls()Z

    move-result v0

    .line 255
    iget-boolean v1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainerVisible:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPageBottomControls;->show()V

    goto :goto_1

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPageBottomControls;->hide()V

    .line 262
    :goto_1
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainerVisible:Z

    .line 264
    :cond_2
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainerVisible:Z

    if-nez v0, :cond_3

    return-void

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 269
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mDelegate:Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;

    .line 270
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    .line 269
    invoke-interface {v4, v5}, Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;->canDisplayBottomControl(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 272
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :cond_4
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    .line 276
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    const v6, 0x7f080294

    if-ne v5, v6, :cond_5

    const v5, 0x7f08030b

    .line 279
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v5, 0x7f0700a1

    .line 280
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 281
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_2

    :cond_5
    const v6, 0x7f080290

    const/16 v7, 0x8

    if-ne v5, v6, :cond_7

    .line 283
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->deletAnimContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_6

    .line 284
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    const v5, 0x7f08013a

    .line 287
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 288
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_2

    :cond_7
    const v4, 0x7f080292

    if-ne v5, v4, :cond_8

    const v4, 0x7f080248

    .line 292
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 293
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_2

    .line 296
    :cond_8
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 300
    :cond_9
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public resetContainerVisible()V
    .locals 1

    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainerVisible:Z

    return-void
.end method

.method public setContinuousShotMode(Z)V
    .locals 0

    .line 323
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContinuousShotMode:Z

    return-void
.end method

.method public setImageView(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->favorite_view:Landroid/widget/ImageView;

    const v0, 0x7f070147

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->favorite_view:Landroid/widget/ImageView;

    const v0, 0x7f070148

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method protected show()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
