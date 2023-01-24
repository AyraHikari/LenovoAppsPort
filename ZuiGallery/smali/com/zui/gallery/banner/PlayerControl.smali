.class public Lcom/zui/gallery/banner/PlayerControl;
.super Ljava/lang/Object;
.source "PlayerControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final HIDE_TITLE_OR_BOTTOM_BAR:I = 0x64

.field private static final SEND_SEEKBAR_POSITION:I = 0xc8

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private fileGroup:Ljava/lang/String;

.field private isAnimaRunIng:Z

.field private isPlayClick:Z

.field private isShowIng:Z

.field private mActivity:Lcom/zui/gallery/banner/MediaPlayerActivity;

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mDragging:Z

.field private mHandler:Landroid/os/Handler;

.field private mPath:Ljava/lang/String;

.field private mPlayButton:Landroid/widget/ImageView;

.field private mProgress:I

.field private mRootView:Landroid/view/View;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTextCurrent:Landroid/widget/TextView;

.field private mTextTotal:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleLayout:Landroid/widget/RelativeLayout;

.field private mVideoPlayer:Lcom/zui/gallery/banner/VideoPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xxxxxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/zui/gallery/banner/PlayerControl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/banner/PlayerControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/banner/VideoPlayer;Lcom/zui/gallery/banner/MediaPlayerActivity;Landroid/view/View;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isPlayClick:Z

    .line 51
    iput-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mDragging:Z

    const-string v0, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    .line 53
    iput-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->fileGroup:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/zui/gallery/banner/PlayerControl$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/banner/PlayerControl$1;-><init>(Lcom/zui/gallery/banner/PlayerControl;)V

    iput-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mHandler:Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcom/zui/gallery/banner/PlayerControl;->mVideoPlayer:Lcom/zui/gallery/banner/VideoPlayer;

    .line 74
    iput-object p2, p0, Lcom/zui/gallery/banner/PlayerControl;->mActivity:Lcom/zui/gallery/banner/MediaPlayerActivity;

    .line 75
    iput-object p3, p0, Lcom/zui/gallery/banner/PlayerControl;->mRootView:Landroid/view/View;

    .line 76
    invoke-virtual {p2}, Lcom/zui/gallery/banner/MediaPlayerActivity;->getVideoPaths()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/banner/PlayerControl;->mPath:Ljava/lang/String;

    .line 77
    invoke-direct {p0, p3}, Lcom/zui/gallery/banner/PlayerControl;->initView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/banner/PlayerControl;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->updateViewStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/banner/PlayerControl;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->setProgress()V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/banner/PlayerControl;IJ)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/banner/PlayerControl;->sendMsg(IJ)V

    return-void
.end method

.method static synthetic access$302(Lcom/zui/gallery/banner/PlayerControl;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/zui/gallery/banner/PlayerControl;->isAnimaRunIng:Z

    return p1
.end method

.method private initData()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mTitleLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/gallery/banner/PlayerControl;->fileGroup:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mPath:Ljava/lang/String;

    const-string v2, "."

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mPath:Ljava/lang/String;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/banner/PlayerControl;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/zui/gallery/banner/-$$Lambda$PlayerControl$6dXcTnSrRqENUa8a_l-hPudut4w;

    invoke-direct {v1, p0}, Lcom/zui/gallery/banner/-$$Lambda$PlayerControl$6dXcTnSrRqENUa8a_l-hPudut4w;-><init>(Lcom/zui/gallery/banner/PlayerControl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0802a9

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mTitleLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0802a8

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0802a3

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mPlayButton:Landroid/widget/ImageView;

    const v0, 0x7f080096

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zui/gallery/banner/PlayerControl;->mBottomLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f080358

    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/banner/PlayerControl;->mTextCurrent:Landroid/widget/TextView;

    .line 86
    iget-object p1, p0, Lcom/zui/gallery/banner/PlayerControl;->mBottomLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0802f8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/zui/gallery/banner/PlayerControl;->mSeekBar:Landroid/widget/SeekBar;

    .line 87
    iget-object p1, p0, Lcom/zui/gallery/banner/PlayerControl;->mBottomLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f08035e

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/banner/PlayerControl;->mTextTotal:Landroid/widget/TextView;

    .line 88
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->initData()V

    return-void
.end method

.method private initialViewState()V
    .locals 1

    .line 370
    iget-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isShowIng:Z

    if-nez v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->startHiding()V

    goto :goto_0

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->startShowIng()V

    :goto_0
    return-void
.end method

.method private removeMsg(I)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    sget-object v0, Lcom/zui/gallery/banner/PlayerControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMsg wait == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private seekTo(I)V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mVideoPlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/VideoPlayer;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    .line 261
    div-int/lit8 v1, v1, 0x64

    mul-int/2addr p1, v1

    iput p1, p0, Lcom/zui/gallery/banner/PlayerControl;->mProgress:I

    .line 262
    sget-object p1, Lcom/zui/gallery/banner/PlayerControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " seekTo == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/gallery/banner/PlayerControl;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget p1, p0, Lcom/zui/gallery/banner/PlayerControl;->mProgress:I

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method private sendHideBar()V
    .locals 4

    .line 140
    iget-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isShowIng:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/zui/gallery/banner/PlayerControl;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mVideoPlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/VideoPlayer;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private sendMsg(I)V
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isShowIng:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private sendMsg(IJ)V
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isShowIng:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private sendSeekbarPosition()V
    .locals 2

    .line 126
    iget-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isShowIng:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/zui/gallery/banner/PlayerControl;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mVideoPlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/VideoPlayer;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private setProgress()V
    .locals 8

    .line 271
    iget-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isShowIng:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/zui/gallery/banner/PlayerControl;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mVideoPlayer:Lcom/zui/gallery/banner/VideoPlayer;

    if-nez v0, :cond_1

    return-void

    .line 277
    :cond_1
    invoke-virtual {v0}, Lcom/zui/gallery/banner/VideoPlayer;->isPreparing()Z

    move-result v0

    .line 278
    iget-object v1, p0, Lcom/zui/gallery/banner/PlayerControl;->mVideoPlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {v1}, Lcom/zui/gallery/banner/VideoPlayer;->isPlaying()Z

    move-result v1

    .line 279
    iget-object v2, p0, Lcom/zui/gallery/banner/PlayerControl;->mVideoPlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {v2}, Lcom/zui/gallery/banner/VideoPlayer;->isPausing()Z

    move-result v2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-eqz v2, :cond_6

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mVideoPlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/VideoPlayer;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    .line 283
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 284
    iget-object v2, p0, Lcom/zui/gallery/banner/PlayerControl;->mActivity:Lcom/zui/gallery/banner/MediaPlayerActivity;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/zui/gallery/banner/MediaPlayerActivity;->stringForTime(J)Ljava/lang/String;

    move-result-object v2

    .line 285
    iget-object v3, p0, Lcom/zui/gallery/banner/PlayerControl;->mActivity:Lcom/zui/gallery/banner/MediaPlayerActivity;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/zui/gallery/banner/MediaPlayerActivity;->stringForTime(J)Ljava/lang/String;

    move-result-object v3

    .line 286
    iget-object v4, p0, Lcom/zui/gallery/banner/PlayerControl;->mTextTotal:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    if-gt v0, v1, :cond_5

    .line 289
    iget-object v5, p0, Lcom/zui/gallery/banner/PlayerControl;->mTextCurrent:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget v5, p0, Lcom/zui/gallery/banner/PlayerControl;->mProgress:I

    if-le v5, v0, :cond_3

    const/4 v4, 0x1

    :cond_3
    if-eqz v4, :cond_4

    .line 291
    iget v4, p0, Lcom/zui/gallery/banner/PlayerControl;->mProgress:I

    goto :goto_0

    :cond_4
    move v4, v0

    :goto_0
    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v1

    if-eqz v4, :cond_5

    .line 293
    iget-object v5, p0, Lcom/zui/gallery/banner/PlayerControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 296
    :cond_5
    sget-object v5, Lcom/zui/gallery/banner/PlayerControl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setProgress totalProgress == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  currentProgress == "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  totalDuration == "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  currentPosition == "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    progress == "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method

.method private startHiding()V
    .locals 3

    .line 177
    iget-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isAnimaRunIng:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isShowIng:Z

    .line 181
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zui/gallery/banner/PlayerControl;->mBottomLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/gallery/banner/PlayerControl;->startShowOrHideAnimation(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method private startShowIng()V
    .locals 3

    .line 115
    iget-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isAnimaRunIng:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isShowIng:Z

    .line 119
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zui/gallery/banner/PlayerControl;->mBottomLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/gallery/banner/PlayerControl;->startShowOrHideAnimation(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method private startShowOrHideAnimation(Landroid/view/View;Landroid/view/View;Z)V
    .locals 3

    .line 191
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->updatePlayButton()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 192
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 194
    new-instance v1, Lcom/zui/gallery/banner/-$$Lambda$PlayerControl$yJh_ZIMjWgaPFfVqNI0LPoqD2MI;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/zui/gallery/banner/-$$Lambda$PlayerControl$yJh_ZIMjWgaPFfVqNI0LPoqD2MI;-><init>(Lcom/zui/gallery/banner/PlayerControl;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    new-instance p1, Lcom/zui/gallery/banner/PlayerControl$2;

    invoke-direct {p1, p0, p3}, Lcom/zui/gallery/banner/PlayerControl$2;-><init>(Lcom/zui/gallery/banner/PlayerControl;Z)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 243
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 244
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updatePlayButton()V
    .locals 3

    .line 328
    iget-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isShowIng:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mPlayButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mPlayButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mPlayButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 337
    :goto_0
    iget-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isShowIng:Z

    if-nez v0, :cond_1

    return-void

    .line 340
    :cond_1
    iget-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isPlayClick:Z

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mPlayButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zui/gallery/banner/PlayerControl;->mActivity:Lcom/zui/gallery/banner/MediaPlayerActivity;

    const v2, 0x7f07021f

    invoke-virtual {v1, v2}, Lcom/zui/gallery/banner/MediaPlayerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mPlayButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zui/gallery/banner/PlayerControl;->mActivity:Lcom/zui/gallery/banner/MediaPlayerActivity;

    const v2, 0x7f070363

    invoke-virtual {v1, v2}, Lcom/zui/gallery/banner/MediaPlayerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    :goto_1
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->setProgress()V

    return-void
.end method

.method private updatePlayOrPause()V
    .locals 2

    .line 306
    iget-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isShowIng:Z

    if-nez v0, :cond_0

    return-void

    .line 309
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isPlayClick:Z

    const/16 v1, 0xc8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mVideoPlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/VideoPlayer;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-direct {p0, v1}, Lcom/zui/gallery/banner/PlayerControl;->sendMsg(I)V

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isPlayClick:Z

    .line 313
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mVideoPlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/VideoPlayer;->playVideo()V

    goto :goto_0

    .line 314
    :cond_1
    iget-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isPlayClick:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mVideoPlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    .line 316
    invoke-direct {p0, v0}, Lcom/zui/gallery/banner/PlayerControl;->removeMsg(I)V

    .line 317
    invoke-direct {p0, v1}, Lcom/zui/gallery/banner/PlayerControl;->removeMsg(I)V

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isPlayClick:Z

    .line 319
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mVideoPlayer:Lcom/zui/gallery/banner/VideoPlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/VideoPlayer;->pause()V

    .line 321
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->updatePlayButton()V

    return-void
.end method

.method private updateViewStatus()V
    .locals 1

    .line 353
    iget-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->isShowIng:Z

    if-eqz v0, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->startHiding()V

    goto :goto_0

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->startShowIng()V

    .line 361
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->sendHideBar()V

    .line 363
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->sendSeekbarPosition()V

    return-void
.end method


# virtual methods
.method public isDragging()Z
    .locals 1

    .line 406
    iget-boolean v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mDragging:Z

    return v0
.end method

.method public synthetic lambda$initData$0$PlayerControl(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->updateViewStatus()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$startShowOrHideAnimation$1$PlayerControl(ZLandroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 196
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    neg-float p1, p4

    .line 199
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    if-eqz p3, :cond_1

    .line 202
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p4

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/banner/PlayerControl;->mPlayButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    sub-float/2addr v0, p4

    .line 205
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    sub-float p1, p4, v0

    .line 209
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    if-eqz p3, :cond_4

    sub-float/2addr v0, p4

    .line 212
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 214
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/banner/PlayerControl;->mPlayButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 215
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0802a3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->updatePlayOrPause()V

    :goto_0
    return-void
.end method

.method public onExit()V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mActivity:Lcom/zui/gallery/banner/MediaPlayerActivity;

    const/4 v1, -0x1

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/banner/MediaPlayerActivity;->overridePendingTransition(II)V

    .line 412
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mActivity:Lcom/zui/gallery/banner/MediaPlayerActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/banner/MediaPlayerActivity;->finish()V

    return-void
.end method

.method public onPrepared()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mActivity:Lcom/zui/gallery/banner/MediaPlayerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/banner/MediaPlayerActivity;->fullScreen(Z)V

    .line 253
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->initialViewState()V

    .line 254
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->setProgress()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_1

    const/16 p1, 0x64

    if-lt p2, p1, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/zui/gallery/banner/PlayerControl;->onExit()V

    return-void

    .line 423
    :cond_0
    invoke-direct {p0, p2}, Lcom/zui/gallery/banner/PlayerControl;->seekTo(I)V

    .line 424
    sget-object p1, Lcom/zui/gallery/banner/PlayerControl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgressChanged == "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 432
    iput-boolean p1, p0, Lcom/zui/gallery/banner/PlayerControl;->mDragging:Z

    const/16 p1, 0x64

    .line 434
    invoke-direct {p0, p1}, Lcom/zui/gallery/banner/PlayerControl;->removeMsg(I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    const/16 v0, 0x64

    .line 381
    invoke-direct {p0, v0}, Lcom/zui/gallery/banner/PlayerControl;->removeMsg(I)V

    const/16 v0, 0xc8

    .line 382
    invoke-direct {p0, v0}, Lcom/zui/gallery/banner/PlayerControl;->removeMsg(I)V

    .line 383
    iget-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mVideoPlayer:Lcom/zui/gallery/banner/VideoPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 384
    iput-object v0, p0, Lcom/zui/gallery/banner/PlayerControl;->mVideoPlayer:Lcom/zui/gallery/banner/VideoPlayer;

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x0

    .line 441
    iput-boolean p1, p0, Lcom/zui/gallery/banner/PlayerControl;->mDragging:Z

    .line 442
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->setProgress()V

    .line 444
    invoke-direct {p0}, Lcom/zui/gallery/banner/PlayerControl;->sendHideBar()V

    return-void
.end method
