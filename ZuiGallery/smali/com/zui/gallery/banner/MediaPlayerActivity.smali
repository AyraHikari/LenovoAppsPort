.class public Lcom/zui/gallery/banner/MediaPlayerActivity;
.super Lcom/zui/gallery/banner/BaseActivity;
.source "MediaPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/banner/MediaPlayerActivity$LoadVideoListener;,
        Lcom/zui/gallery/banner/MediaPlayerActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final SEEKBAR_WIDTH_MUTIL:I = 0x12c

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bottomLayoutView:Landroid/view/View;

.field private isScreenLand:Z

.field private mBackBut:Landroid/widget/ImageView;

.field private mCurrentView:Landroid/widget/TextView;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMovePlayer:Lcom/zui/gallery/banner/VideoPlayer;

.field mOutputStream:Ljava/io/ByteArrayOutputStream;

.field private mPathByte:[B

.field private mRootView:Landroid/view/View;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTimeBar:Landroid/widget/SeekBar;

.field private mTitleLayout:Landroid/widget/RelativeLayout;

.field private mTotalView:Landroid/widget/TextView;

.field private mVideoPaths:Ljava/lang/String;

.field myHandler:Lcom/zui/gallery/banner/MediaPlayerActivity$MyHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xxxxxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/zui/gallery/banner/MediaPlayerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/zui/gallery/banner/BaseActivity;-><init>()V

    .line 129
    new-instance v0, Lcom/zui/gallery/banner/MediaPlayerActivity$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/banner/MediaPlayerActivity$MyHandler;-><init>(Lcom/zui/gallery/banner/MediaPlayerActivity;Lcom/zui/gallery/banner/MediaPlayerActivity$1;)V

    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->myHandler:Lcom/zui/gallery/banner/MediaPlayerActivity$MyHandler;

    return-void
.end method

.method private LoadVideoStream(Ljava/lang/String;)V
    .locals 2

    .line 120
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/banner/MediaPlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/banner/MediaPlayerActivity$1;-><init>(Lcom/zui/gallery/banner/MediaPlayerActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->decrptVideoToStream(Ljava/lang/String;Lcom/zui/gallery/banner/MediaPlayerActivity$LoadVideoListener;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zui/gallery/banner/MediaPlayerActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->initMediaPlayer()V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/banner/MediaPlayerActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->initSurfaceView()V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/gallery/banner/MediaPlayerActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->initControl()V

    return-void
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 280
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

.method private getConfig()V
    .locals 3

    .line 289
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->refresh(Landroid/content/Context;)V

    .line 290
    invoke-virtual {p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 291
    iput-boolean v1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->isScreenLand:Z

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->isScreenLand:Z

    .line 295
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->resetViewParams()V

    return-void
.end method

.method private initControl()V
    .locals 4

    .line 98
    new-instance v0, Lcom/zui/gallery/banner/VideoPlayer;

    iget-object v1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/zui/gallery/banner/VideoPlayer;-><init>(Lcom/zui/gallery/banner/MediaPlayerActivity;Landroid/view/View;Landroid/media/MediaPlayer;Landroid/view/SurfaceView;)V

    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMovePlayer:Lcom/zui/gallery/banner/VideoPlayer;

    .line 100
    sget-object v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "initControl"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initIntent()V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "video"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mVideoPaths:Ljava/lang/String;

    .line 115
    invoke-direct {p0, v0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->LoadVideoStream(Ljava/lang/String;)V

    return-void
.end method

.method private initListener(Lcom/zui/gallery/banner/MediaPlayerActivity;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 162
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 163
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 164
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 165
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 166
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 167
    iget-object p1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method private initMediaPlayer()V
    .locals 2

    .line 171
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 172
    invoke-direct {p0, p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->initListener(Lcom/zui/gallery/banner/MediaPlayerActivity;)V

    .line 173
    sget-object v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "initMediaPlayer"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initSurfaceView()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mHolder:Landroid/view/SurfaceHolder;

    .line 105
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 106
    invoke-virtual {p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->progressDialogDismiss()V

    .line 107
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 108
    sget-object v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "initSurfaceView"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetViewParams()V
    .locals 16

    move-object/from16 v0, p0

    .line 209
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    const/high16 v2, 0x41200000    # 10.0f

    .line 210
    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/banner/MediaPlayerActivity;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    .line 211
    invoke-direct {v0, v1, v4}, Lcom/zui/gallery/banner/MediaPlayerActivity;->dip2px(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    .line 212
    invoke-direct {v0, v1, v5}, Lcom/zui/gallery/banner/MediaPlayerActivity;->dip2px(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    .line 213
    invoke-direct {v0, v1, v6}, Lcom/zui/gallery/banner/MediaPlayerActivity;->dip2px(Landroid/content/Context;F)I

    move-result v7

    .line 214
    invoke-direct {v0, v1, v6}, Lcom/zui/gallery/banner/MediaPlayerActivity;->dip2px(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x40c00000    # 6.0f

    .line 215
    invoke-direct {v0, v1, v9}, Lcom/zui/gallery/banner/MediaPlayerActivity;->dip2px(Landroid/content/Context;F)I

    move-result v9

    .line 216
    invoke-direct {v0, v1, v6}, Lcom/zui/gallery/banner/MediaPlayerActivity;->dip2px(Landroid/content/Context;F)I

    move-result v6

    const/high16 v10, 0x41d80000    # 27.0f

    .line 217
    invoke-direct {v0, v1, v10}, Lcom/zui/gallery/banner/MediaPlayerActivity;->dip2px(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x42200000    # 40.0f

    .line 218
    invoke-direct {v0, v1, v11}, Lcom/zui/gallery/banner/MediaPlayerActivity;->dip2px(Landroid/content/Context;F)I

    move-result v11

    .line 219
    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/banner/MediaPlayerActivity;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 221
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "persist_zuk_shownavbar"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 222
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "persist_zuk_shownavbar "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "bing"

    invoke-static {v15, v13}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v13, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->isScreenLand()Z

    move-result v15

    const/4 v14, 0x1

    if-nez v15, :cond_2

    if-ne v12, v14, :cond_0

    .line 226
    iget-object v4, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->bottomLayoutView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 228
    iget-object v4, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->bottomLayoutView:Landroid/view/View;

    invoke-virtual {v4, v6, v6, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 230
    :goto_0
    iget-object v4, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mTotalView:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 231
    iget-object v4, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 232
    invoke-static {v1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mTotalView:Landroid/widget/TextView;

    int-to-float v2, v2

    invoke-virtual {v1, v14, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 234
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1, v14, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 236
    :cond_1
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mTotalView:Landroid/widget/TextView;

    int-to-float v2, v8

    invoke-virtual {v1, v14, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 237
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1, v14, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 239
    iput v1, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v3, 0x0

    .line 240
    invoke-virtual {v13, v5, v3, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 241
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v13}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_2
    const/4 v3, 0x0

    if-ne v12, v14, :cond_5

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060251

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 245
    iget-object v5, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->bottomLayoutView:Landroid/view/View;

    invoke-virtual {v5, v11, v3, v11, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 246
    iget-object v5, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mTotalView:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 247
    iget-object v5, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 248
    invoke-static {v1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mTotalView:Landroid/widget/TextView;

    int-to-float v2, v2

    invoke-virtual {v1, v14, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 250
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1, v14, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 252
    :cond_3
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mTotalView:Landroid/widget/TextView;

    int-to-float v2, v6

    invoke-virtual {v1, v14, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 253
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1, v14, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 255
    iput v1, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 256
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mActivity:Lcom/zui/gallery/banner/BaseActivity;

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x12c

    .line 257
    iput v1, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_4
    const/4 v3, 0x0

    .line 259
    invoke-virtual {v13, v7, v3, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 260
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v13}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_5
    const/high16 v5, 0x3f800000    # 1.0f

    .line 262
    iput v5, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 263
    iget-object v5, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->bottomLayoutView:Landroid/view/View;

    invoke-virtual {v5, v11, v3, v11, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 264
    iget-object v5, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mTotalView:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 265
    iget-object v5, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 266
    invoke-static {v1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 267
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mTotalView:Landroid/widget/TextView;

    int-to-float v2, v2

    invoke-virtual {v1, v14, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 268
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1, v14, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    .line 270
    :cond_6
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mTotalView:Landroid/widget/TextView;

    int-to-float v2, v9

    invoke-virtual {v1, v14, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 271
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1, v14, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_3
    const/4 v1, 0x0

    .line 273
    invoke-virtual {v13, v7, v1, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 274
    iget-object v1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v13}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public getVideoByte()Ljava/io/ByteArrayOutputStream;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mOutputStream:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public getVideoPaths()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mVideoPaths:Ljava/lang/String;

    return-object v0
.end method

.method protected initData()V
    .locals 1

    const v0, 0x7f100198

    .line 89
    invoke-virtual {p0, v0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->createProgressDialog(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->getConfig()V

    .line 91
    invoke-direct {p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->initIntent()V

    return-void
.end method

.method protected initView()V
    .locals 2

    .line 72
    sget-object v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f080250

    .line 73
    invoke-virtual {p0, v0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f080337

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    const v0, 0x7f0802a9

    .line 76
    invoke-virtual {p0, v0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mTitleLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0802a7

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mBackBut:Landroid/widget/ImageView;

    .line 78
    new-instance v1, Lcom/zui/gallery/banner/-$$Lambda$MediaPlayerActivity$SyjIE9umgcJF5vK7NnoH1Tg3EM4;

    invoke-direct {v1, p0}, Lcom/zui/gallery/banner/-$$Lambda$MediaPlayerActivity$SyjIE9umgcJF5vK7NnoH1Tg3EM4;-><init>(Lcom/zui/gallery/banner/MediaPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->bottomLayoutView:Landroid/view/View;

    const v1, 0x7f080358

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mCurrentView:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->bottomLayoutView:Landroid/view/View;

    const v1, 0x7f0802f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mTimeBar:Landroid/widget/SeekBar;

    .line 84
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->bottomLayoutView:Landroid/view/View;

    const v1, 0x7f08035e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mTotalView:Landroid/widget/TextView;

    return-void
.end method

.method public isScreenLand()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->isScreenLand:Z

    return v0
.end method

.method public synthetic lambda$initView$0$MediaPlayerActivity(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->finish()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMovePlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/VideoPlayer;->onCompletion()V

    .line 179
    sget-object v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Lcom/zui/gallery/banner/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 198
    invoke-direct {p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->getConfig()V

    .line 199
    iget-object p1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMovePlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {p1}, Lcom/zui/gallery/banner/VideoPlayer;->onConfigurationChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/zui/gallery/banner/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 338
    invoke-super {p0}, Lcom/zui/gallery/banner/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 341
    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mOutputStream:Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 343
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    :goto_0
    invoke-direct {p0, v0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->initListener(Lcom/zui/gallery/banner/MediaPlayerActivity;)V

    .line 346
    iget-object v1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMovePlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {v1}, Lcom/zui/gallery/banner/VideoPlayer;->onDestroy()V

    .line 347
    iget-object v1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 348
    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMovePlayer:Lcom/zui/gallery/banner/VideoPlayer;

    if-eqz v1, :cond_1

    .line 351
    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_2

    .line 354
    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mSurfaceView:Landroid/view/SurfaceView;

    :cond_2
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .line 184
    sget-object v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError mp == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " what ==  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  extra == "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMovePlayer:Lcom/zui/gallery/banner/VideoPlayer;

    iget-object p2, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/banner/VideoPlayer;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .line 191
    sget-object v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo  mp == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " what ==  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  extra == "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 204
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/banner/BaseActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 205
    invoke-direct {p0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->resetViewParams()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 300
    sget-object v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object p1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMovePlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {p1}, Lcom/zui/gallery/banner/VideoPlayer;->onPrepared()V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 307
    iget-object p1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMovePlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {p1}, Lcom/zui/gallery/banner/VideoPlayer;->onSeekComplete()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 332
    invoke-super {p0}, Lcom/zui/gallery/banner/BaseActivity;->onStop()V

    .line 333
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMovePlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/VideoPlayer;->onStop()V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    .line 327
    sget-object v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged mp == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  width == "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  height == "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setLayoutResourceID()I
    .locals 1

    const v0, 0x7f0b0029

    return v0
.end method

.method public stringForTime(J)Ljava/lang/String;
    .locals 3

    long-to-int p1, p1

    .line 359
    div-int/lit16 p1, p1, 0x3e8

    .line 360
    rem-int/lit8 p2, p1, 0x3c

    .line 361
    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    .line 362
    div-int/lit16 p1, p1, 0xe10

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 363
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

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .line 316
    sget-object v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceChanged holder == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  format == "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  width == "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  height == "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mMovePlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/banner/VideoPlayer;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mHolder:Landroid/view/SurfaceHolder;

    .line 322
    sget-object v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceDestroyed holder == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
