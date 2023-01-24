.class public abstract Lcom/zui/gallery/app/CommonControllerOverlay;
.super Landroid/widget/FrameLayout;
.source "CommonControllerOverlay.java"

# interfaces
.implements Lcom/zui/gallery/app/ControllerOverlay;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zui/gallery/app/ControllerOverlay$ScrubbingListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/CommonControllerOverlay$State;
    }
.end annotation


# static fields
.field private static final ERROR_MESSAGE_RELATIVE_PADDING:F = 0.16666667f

.field public static final NAV_BAR_KEY:Ljava/lang/String; = "persist_zuk_shownavbar"

.field private static final SEEKBAR_WIDTH:I = 0x780

.field private static final SEEKBAR_WIDTH_MUTIL:I = 0x12c


# instance fields
.field protected bottomLayoutView:Landroid/view/View;

.field protected bottomView:Landroid/view/View;

.field protected volatile isMutil:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mCanReplay:Z

.field private mContext:Landroid/content/Context;

.field protected final mCurrentView:Landroid/widget/TextView;

.field protected final mErrorView:Landroid/widget/TextView;

.field protected mListener:Lcom/zui/gallery/app/ControllerOverlay$Listener;

.field protected final mLoadingView:Landroid/widget/LinearLayout;

.field protected mMainView:Landroid/view/View;

.field protected final mPlayPauseReplayView:Landroid/widget/ImageView;

.field protected mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

.field protected mTimeBar:Landroid/widget/SeekBar;

.field protected final mTotalView:Landroid/widget/TextView;

.field private final mWindowInsets:Landroid/graphics/Rect;

.field protected progressChanged:I

.field protected totleTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->progressChanged:I

    .line 83
    iput v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->totleTime:I

    const/4 v1, 0x1

    .line 87
    iput-boolean v1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mCanReplay:Z

    .line 90
    iput-boolean v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->isMutil:Z

    .line 429
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    .line 103
    iput-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    .line 104
    sget-object v2, Lcom/zui/gallery/app/CommonControllerOverlay$State;->LOADING:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    iput-object v2, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    .line 105
    iget-boolean v2, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->isMutil:Z

    if-eqz v2, :cond_0

    .line 106
    sget-object v2, Lcom/zui/gallery/app/CommonControllerOverlay$State;->PLAYING:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    iput-object v2, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    .line 109
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 118
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0b0098

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->bottomView:Landroid/view/View;

    .line 119
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 121
    iget-object v3, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->bottomView:Landroid/view/View;

    invoke-virtual {p0, v3, v6}, Lcom/zui/gallery/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v3, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->bottomView:Landroid/view/View;

    const v6, 0x7f080096

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->bottomLayoutView:Landroid/view/View;

    .line 124
    iget-object v3, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->bottomView:Landroid/view/View;

    const v6, 0x7f0803a1

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 125
    iget-object v6, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 126
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 128
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v0, 0x7f08035e

    .line 131
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/CommonControllerOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTotalView:Landroid/widget/TextView;

    const v0, 0x7f080359

    .line 132
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/CommonControllerOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mCurrentView:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->bottomView:Landroid/view/View;

    const v3, 0x7f0802f8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTimeBar:Landroid/widget/SeekBar;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f100028

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 139
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 141
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 142
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 144
    iget-object v1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/CommonControllerOverlay;->createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f10019d

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/zui/gallery/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->bottomView:Landroid/view/View;

    const v1, 0x7f0802a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    .line 151
    new-instance v1, Lcom/zui/gallery/app/CommonControllerOverlay$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/CommonControllerOverlay$1;-><init>(Lcom/zui/gallery/app/CommonControllerOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-direct {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->resetViewParams()V

    .line 162
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/CommonControllerOverlay;->createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    .line 163
    invoke-virtual {p0, p1, v4}, Lcom/zui/gallery/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/CommonControllerOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    invoke-virtual {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->hide()V

    return-void
.end method

.method private createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2

    .line 174
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x11

    .line 175
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, -0x1

    .line 176
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    const/16 v1, 0xf

    .line 177
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private layoutCenteredView(Landroid/view/View;IIII)V
    .locals 2

    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    .line 462
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    sub-int/2addr p5, v1

    .line 463
    div-int/lit8 p5, p5, 0x2

    add-int/2addr v0, p4

    add-int/2addr v1, p5

    .line 464
    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private resetViewParams()V
    .locals 16

    move-object/from16 v0, p0

    .line 254
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/app/CommonControllerOverlay;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 255
    iget-object v3, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v0, v3, v4}, Lcom/zui/gallery/app/CommonControllerOverlay;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 256
    iget-object v4, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/zui/gallery/app/CommonControllerOverlay;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 257
    iget-object v5, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-direct {v0, v5, v6}, Lcom/zui/gallery/app/CommonControllerOverlay;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 258
    iget-object v7, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7, v6}, Lcom/zui/gallery/app/CommonControllerOverlay;->dip2px(Landroid/content/Context;F)I

    move-result v7

    .line 259
    iget-object v8, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-direct {v0, v8, v9}, Lcom/zui/gallery/app/CommonControllerOverlay;->dip2px(Landroid/content/Context;F)I

    move-result v8

    .line 260
    iget-object v9, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9, v6}, Lcom/zui/gallery/app/CommonControllerOverlay;->dip2px(Landroid/content/Context;F)I

    move-result v6

    .line 261
    iget-object v9, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v10, 0x41d80000    # 27.0f

    invoke-direct {v0, v9, v10}, Lcom/zui/gallery/app/CommonControllerOverlay;->dip2px(Landroid/content/Context;F)I

    move-result v9

    .line 262
    iget-object v10, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    const/high16 v11, 0x42200000    # 40.0f

    invoke-direct {v0, v10, v11}, Lcom/zui/gallery/app/CommonControllerOverlay;->dip2px(Landroid/content/Context;F)I

    move-result v10

    .line 264
    iget-object v11, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    invoke-direct {v0, v11, v2}, Lcom/zui/gallery/app/CommonControllerOverlay;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 267
    iget-object v11, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "persist_zuk_shownavbar"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 268
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "persist_zuk_shownavbar "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "bing"

    invoke-static {v14, v12}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v12, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 270
    iget-object v14, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    if-ne v11, v15, :cond_0

    .line 272
    iget-object v3, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->bottomLayoutView:Landroid/view/View;

    invoke-virtual {v3, v13, v13, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v3, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->bottomLayoutView:Landroid/view/View;

    invoke-virtual {v3, v13, v13, v13, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 276
    :goto_0
    iget-object v3, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTotalView:Landroid/widget/TextView;

    invoke-virtual {v3, v13, v13, v1, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 277
    iget-object v3, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v13, v13, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 280
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTotalView:Landroid/widget/TextView;

    int-to-float v2, v2

    invoke-virtual {v1, v15, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 282
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1, v15, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 284
    :cond_1
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTotalView:Landroid/widget/TextView;

    int-to-float v2, v7

    invoke-virtual {v1, v15, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 285
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1, v15, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 288
    iput v1, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 289
    invoke-virtual {v12, v4, v13, v4, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 290
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v12}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_2
    if-ne v11, v15, :cond_5

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060251

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 296
    iget-object v3, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->bottomLayoutView:Landroid/view/View;

    invoke-virtual {v3, v10, v13, v10, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 297
    iget-object v3, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTotalView:Landroid/widget/TextView;

    invoke-virtual {v3, v13, v13, v1, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 298
    iget-object v3, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v13, v13, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 301
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 302
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTotalView:Landroid/widget/TextView;

    int-to-float v2, v2

    invoke-virtual {v1, v15, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 303
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1, v15, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 305
    :cond_3
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTotalView:Landroid/widget/TextView;

    int-to-float v2, v6

    invoke-virtual {v1, v15, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 306
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1, v15, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 310
    iput v1, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 312
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x12c

    .line 313
    iput v1, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 316
    :cond_4
    invoke-virtual {v12, v5, v13, v5, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 317
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v12}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 319
    iput v1, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 322
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->bottomLayoutView:Landroid/view/View;

    invoke-virtual {v1, v10, v13, v10, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 324
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTotalView:Landroid/widget/TextView;

    invoke-virtual {v1, v13, v13, v3, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 325
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v13, v13, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 328
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 329
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTotalView:Landroid/widget/TextView;

    int-to-float v2, v2

    invoke-virtual {v1, v15, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 330
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1, v15, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    .line 332
    :cond_6
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTotalView:Landroid/widget/TextView;

    int-to-float v2, v8

    invoke-virtual {v1, v15, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 333
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1, v15, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 336
    :goto_3
    invoke-virtual {v12, v5, v13, v5, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 337
    iget-object v1, v0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v12}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    return-void
.end method

.method private showMainView(Landroid/view/View;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    .line 378
    invoke-virtual {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->updateViews()V

    return-void
.end method

.method private stringForTime(J)Ljava/lang/String;
    .locals 3

    long-to-int p1, p1

    .line 530
    div-int/lit16 p1, p1, 0x3e8

    .line 531
    rem-int/lit8 p2, p1, 0x3c

    .line 532
    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    .line 533
    div-int/lit16 p1, p1, 0xe10

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 535
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x4

    .line 371
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/CommonControllerOverlay;->setVisibility(I)V

    const/4 v0, 0x1

    .line 372
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/CommonControllerOverlay;->setFocusable(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->requestFocus()Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mListener:Lcom/zui/gallery/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 397
    iget-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    sget-object v0, Lcom/zui/gallery/app/CommonControllerOverlay$State;->ENDED:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    if-ne p1, v0, :cond_0

    .line 398
    iget-boolean p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mCanReplay:Z

    if-eqz p1, :cond_2

    .line 399
    iget-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mListener:Lcom/zui/gallery/app/ControllerOverlay$Listener;

    invoke-interface {p1}, Lcom/zui/gallery/app/ControllerOverlay$Listener;->onReplay()V

    goto :goto_0

    .line 401
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    sget-object v0, Lcom/zui/gallery/app/CommonControllerOverlay$State;->PAUSED:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    sget-object v0, Lcom/zui/gallery/app/CommonControllerOverlay$State;->PLAYING:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    if-ne p1, v0, :cond_2

    .line 402
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mListener:Lcom/zui/gallery/app/ControllerOverlay$Listener;

    invoke-interface {p1}, Lcom/zui/gallery/app/ControllerOverlay$Listener;->onPlayPause()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 235
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 236
    invoke-direct {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->resetViewParams()V

    .line 237
    iget-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->bottomView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 410
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 441
    iget-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    .line 442
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 443
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 444
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 445
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 449
    iget-object p2, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    sub-int/2addr p5, p1

    .line 453
    iget-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 455
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int p2, p5, p2

    const/4 p3, 0x0

    sub-int/2addr p4, p3

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 469
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 470
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/app/CommonControllerOverlay;->measureChildren(II)V

    return-void
.end method

.method protected onMultiWindowModeChanged(Z)V
    .locals 0

    .line 247
    iput-boolean p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->isMutil:Z

    .line 248
    invoke-direct {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->resetViewParams()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    const/16 p3, 0x64

    if-lt p2, p3, :cond_0

    .line 554
    iget-object p2, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mListener:Lcom/zui/gallery/app/ControllerOverlay$Listener;

    invoke-interface {p2}, Lcom/zui/gallery/app/ControllerOverlay$Listener;->onExit()V

    .line 556
    :cond_0
    iget p2, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->progressChanged:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->progressChanged:I

    .line 557
    rem-int/lit8 p2, p2, 0x9

    if-nez p2, :cond_1

    .line 560
    iget p2, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->totleTime:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    mul-int/2addr p2, p1

    div-int/2addr p2, p3

    invoke-virtual {p0, p2}, Lcom/zui/gallery/app/CommonControllerOverlay;->onScrubbingMove(I)V

    :cond_1
    return-void
.end method

.method public onScrubbingEnd(III)V
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mListener:Lcom/zui/gallery/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_0

    .line 525
    invoke-interface {v0, p1, p2, p3}, Lcom/zui/gallery/app/ControllerOverlay$Listener;->onSeekEnd(III)V

    :cond_0
    return-void
.end method

.method public onScrubbingMove(I)V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mListener:Lcom/zui/gallery/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_0

    .line 518
    invoke-interface {v0, p1}, Lcom/zui/gallery/app/ControllerOverlay$Listener;->onSeekMove(I)V

    :cond_0
    return-void
.end method

.method public onScrubbingStart()V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mListener:Lcom/zui/gallery/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_0

    .line 511
    invoke-interface {v0}, Lcom/zui/gallery/app/ControllerOverlay$Listener;->onSeekStart()V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 542
    invoke-virtual {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->onScrubbingStart()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 415
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCanReplay(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mCanReplay:Z

    return-void
.end method

.method public setListener(Lcom/zui/gallery/app/ControllerOverlay$Listener;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mListener:Lcom/zui/gallery/app/ControllerOverlay$Listener;

    return-void
.end method

.method public setSeekable(Z)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setClickable(Z)V

    return-void
.end method

.method public setTimes(IIIII)V
    .locals 2

    .line 354
    iput p3, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->totleTime:I

    .line 355
    iget-object p4, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTotalView:Landroid/widget/TextView;

    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/app/CommonControllerOverlay;->stringForTime(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lt p2, p1, :cond_0

    .line 358
    iget-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mCurrentView:Landroid/widget/TextView;

    int-to-long p4, p2

    invoke-direct {p0, p4, p5}, Lcom/zui/gallery/app/CommonControllerOverlay;->stringForTime(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_1

    mul-int/lit8 p2, p2, 0x64

    .line 363
    div-int p1, p2, p3

    :cond_1
    if-eqz p1, :cond_2

    .line 366
    iget-object p2, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    return-void
.end method

.method public show()V
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->updateViews()V

    const/4 v0, 0x0

    .line 389
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/CommonControllerOverlay;->setVisibility(I)V

    .line 390
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/CommonControllerOverlay;->setFocusable(Z)V

    return-void
.end method

.method public showEnded()V
    .locals 2

    .line 210
    sget-object v0, Lcom/zui/gallery/app/CommonControllerOverlay$State;->ENDED:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    .line 212
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 214
    iget-boolean v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mCanReplay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->bottomView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 4

    .line 225
    sget-object v0, Lcom/zui/gallery/app/CommonControllerOverlay$State;->ERROR:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    .line 226
    invoke-virtual {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 227
    iget-object v1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    .line 228
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    .line 227
    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 229
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object p1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    return-void
.end method

.method public showLoading()V
    .locals 1

    .line 219
    sget-object v0, Lcom/zui/gallery/app/CommonControllerOverlay$State;->LOADING:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    .line 220
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    return-void
.end method

.method protected showMainView()V
    .locals 1

    .line 242
    invoke-direct {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->resetViewParams()V

    .line 243
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->bottomView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    return-void
.end method

.method public showPaused()V
    .locals 1

    .line 204
    sget-object v0, Lcom/zui/gallery/app/CommonControllerOverlay$State;->PAUSED:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    .line 205
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->bottomView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    return-void
.end method

.method public showPlaying()V
    .locals 1

    .line 198
    sget-object v0, Lcom/zui/gallery/app/CommonControllerOverlay$State;->PLAYING:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    .line 199
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->bottomView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    return-void
.end method

.method protected updateViews()V
    .locals 5

    .line 486
    invoke-virtual {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100025

    .line 488
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 489
    iget-object v2, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    sget-object v3, Lcom/zui/gallery/app/CommonControllerOverlay$State;->PAUSED:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    if-ne v2, v3, :cond_0

    const v1, 0x7f0702c4

    const v2, 0x7f100024

    .line 491
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 492
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    sget-object v3, Lcom/zui/gallery/app/CommonControllerOverlay$State;->PLAYING:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    if-ne v2, v3, :cond_1

    const v1, 0x7f0702c3

    const v2, 0x7f100023

    .line 494
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f070242

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    .line 497
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 498
    iget-object v1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v0, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    .line 500
    iget-object v1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    sget-object v2, Lcom/zui/gallery/app/CommonControllerOverlay$State;->LOADING:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    sget-object v2, Lcom/zui/gallery/app/CommonControllerOverlay$State;->ERROR:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    sget-object v2, Lcom/zui/gallery/app/CommonControllerOverlay$State;->ENDED:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/zui/gallery/app/CommonControllerOverlay;->mCanReplay:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    .line 499
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    invoke-virtual {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->requestLayout()V

    return-void
.end method
