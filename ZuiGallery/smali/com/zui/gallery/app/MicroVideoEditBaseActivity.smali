.class public abstract Lcom/zui/gallery/app/MicroVideoEditBaseActivity;
.super Lcom/zui/gallery/app/BaseActivity;
.source "MicroVideoEditBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$seekBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;,
        Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;
    }
.end annotation


# static fields
.field private static final IMAGE_NAME_PREFIX:Ljava/lang/String; = "IMG_"

.field private static final KEY_ISPLAYING:Ljava/lang/String; = "ISPLAYING"

.field private static final KEY_VIDEOPOSITION:Ljava/lang/String; = "VIDEOPOSITION"

.field private static final REQUEST_CODE_VUE_EDIT:I = 0x457

.field protected static final TIME_NONE:I = -0x1

.field private static final VIDEO_NAME_FORMAT:Ljava/lang/String; = "yyyyMMdd_HHmmss"

.field private static final VIDEO_NAME_PREFIX:Ljava/lang/String; = "VID_"


# instance fields
.field private MAX_VOLUME:I

.field public final TAG:Ljava/lang/String;

.field protected currentCover:Landroid/graphics/Bitmap;

.field private currentVolume:I

.field private dialog:Lzui/app/ActionDialog;

.field private volatile first:Z

.field protected info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

.field protected is4kVideo:Z

.field private volatile isFrameThumbnailReady:Z

.field protected volatile isPlayerReady:Z

.field protected volatile isPlaying:Z

.field private isSaveVideo:Z

.field protected isSlowVideo:Z

.field private volatile isThumbnailReady:Z

.field protected lastSeekPosition:J

.field public length:J

.field private mActionBar:Landroid/widget/LinearLayout;

.field protected mApp:Lcom/zui/gallery/app/GalleryApp;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackBtn:Landroid/widget/ImageView;

.field protected mBlackView:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field protected mController:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

.field protected mCurrentPosition:J

.field private mDoneBtn:Landroid/widget/ImageView;

.field private mDownX:F

.field private mDownY:F

.field protected mDstVideoDir:Ljava/lang/String;

.field protected final mHandler:Landroid/os/Handler;

.field private volatile mHasPaused:Z

.field private mMoveX:F

.field private mMoveY:F

.field private mNoStorageDialog:Landroid/app/AlertDialog;

.field protected mPicPreviewBack:Landroid/widget/ImageView;

.field protected mPicPreviewContainer:Landroid/widget/FrameLayout;

.field protected mPicPreviewFront:Landroid/widget/ImageView;

.field private mPlayIconBtn:Landroid/widget/LinearLayout;

.field private mPlayIconImage:Landroid/widget/ImageView;

.field protected mPreviewHeight:I

.field protected mPreviewWidth:I

.field private mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field private mSaveVideoDialog:Lzui/app/ProgressDialogX;

.field protected mScreenHeight:I

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field protected mScreenWidth:I

.field protected mSecureCameraCall:Z

.field protected mSpeedBar:Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;

.field protected mSrcVideoPath:Ljava/lang/String;

.field protected mSurface:Landroid/view/SurfaceView;

.field protected mTrimEndTime:J

.field protected mTrimStartTime:J

.field private mTrimVideoTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mVUEBtn:Landroid/widget/TextView;

.field protected mVideoContainer:Landroid/widget/FrameLayout;

.field protected mVideoDuration:I

.field protected mVideoHeight:I

.field protected mVideoRoateDegree:I

.field protected mVideoWidth:I

.field protected mediaItem:Lcom/zui/gallery/data/LocalImage;

.field protected media_type:I

.field private needBright:Z

.field public offset:J

.field private onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private useSystemTrim:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/zui/gallery/app/BaseActivity;-><init>()V

    const-string v0, "MicroVideo"

    .line 88
    iput-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->TAG:Ljava/lang/String;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 98
    iput-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mTrimStartTime:J

    .line 99
    iput-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mTrimEndTime:J

    .line 100
    iput-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mCurrentPosition:J

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mVideoDuration:I

    const/4 v1, -0x1

    .line 121
    iput v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->media_type:I

    .line 122
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isSlowVideo:Z

    .line 123
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->is4kVideo:Z

    const/4 v1, 0x1

    .line 124
    iput-boolean v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->useSystemTrim:Z

    .line 125
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isPlaying:Z

    .line 126
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isThumbnailReady:Z

    .line 127
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isFrameThumbnailReady:Z

    .line 128
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isPlayerReady:Z

    .line 129
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mHasPaused:Z

    .line 130
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->first:Z

    .line 160
    new-instance v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$1;-><init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)V

    iput-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 600
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isSaveVideo:Z

    .line 742
    new-instance v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;-><init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 805
    new-instance v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$5;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$5;-><init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method private LaunchVue()V
    .locals 5

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "yykkmm  video path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 475
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "path"

    .line 476
    iget-object v4, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 478
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "yykkmm generated json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "video.vue.android.action.VIDEO_EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "shots"

    .line 482
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "frame"

    const-string v3, "PORTRAIT"

    .line 483
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x457

    .line 487
    invoke-virtual {p0, v2, v0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 489
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "leapp://ptn/appinfo.do?packagename=video.vue.android&versioncode=0&origin=0"

    .line 490
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 491
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 492
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 493
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "yykkmm Exception e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->startTrim(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)Lzui/app/ProgressDialogX;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSaveVideoDialog:Lzui/app/ProgressDialogX;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)Landroid/content/Context;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)Landroid/media/MediaScannerConnection$OnScanCompletedListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isSaveVideo:Z

    return p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)Lcom/zui/gallery/util/Future;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mTrimVideoTask:Lcom/zui/gallery/util/Future;

    return-object p0
.end method

.method private checkAndGetDescDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1154
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 1156
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 1159
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private cleanKeepScreenOn()V
    .locals 3

    .line 1147
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MicroVideo"

    const-string v2, "clean keep screen on exception"

    .line 1149
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private hasEnoughSpaceForVideo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private keepScreenOn()V
    .locals 3

    .line 1139
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MicroVideo"

    const-string v2, "keep screen on exception"

    .line 1141
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private playAndPause()V
    .locals 5

    .line 442
    iget v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mMoveY:F

    iget v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mDownY:F

    sub-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/high16 v4, 0x41a00000    # 20.0f

    if-lez v2, :cond_0

    sub-float/2addr v0, v1

    .line 443
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    iget v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mMoveY:F

    iget v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mDownY:F

    sub-float v2, v0, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    sub-float/2addr v0, v1

    .line 446
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    goto :goto_0

    .line 448
    :cond_1
    iget v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mMoveX:F

    iget v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mDownX:F

    sub-float v2, v0, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    sub-float/2addr v0, v1

    .line 449
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    goto :goto_0

    .line 451
    :cond_2
    iget v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mMoveX:F

    iget v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mDownX:F

    sub-float v2, v0, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    sub-float/2addr v0, v1

    .line 452
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    goto :goto_0

    .line 455
    :cond_3
    invoke-direct {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->playOrPause()V

    :goto_0
    return-void
.end method

.method private playOrPause()V
    .locals 1

    .line 544
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->playHidenBestFrameAnim()V

    .line 545
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->pause()V

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->play()V

    .line 550
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isPlaying()Z

    return-void
.end method

.method private setDarkStatusIcon(Z)V
    .locals 2

    .line 329
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    or-int/lit16 p1, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, -0x2001

    .line 337
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method private showSaveDialog()V
    .locals 3

    const-string v0, "MicroVideo"

    const-string/jumbo v1, "showSaveDialog"

    .line 554
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->dialog:Lzui/app/ActionDialog;

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {v0}, Lzui/app/ActionDialog;->dismiss()V

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->getActionDialogBuilder(Landroid/app/Activity;)Lzui/app/ActionDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$3;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$3;-><init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)V

    .line 560
    invoke-virtual {v1, v0, v2}, Lzui/app/ActionDialog$Builder;->setOptionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    const v1, 0x7f100068

    new-instance v2, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$2;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$2;-><init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)V

    .line 567
    invoke-virtual {v0, v1, v2}, Lzui/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Lzui/app/ActionDialog$Builder;->show()Lzui/app/ActionDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->dialog:Lzui/app/ActionDialog;

    return-void
.end method

.method private startTrim(Z)V
    .locals 7

    .line 604
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MicroVideo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 607
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    .line 609
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->setRequestedOrientation(I)V

    .line 612
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isTrimValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    invoke-direct {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->hasEnoughSpaceForVideo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->showNoStorageDialog()V

    return-void

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSaveVideoDialog:Lzui/app/ProgressDialogX;

    if-eqz p1, :cond_2

    const v1, 0x7f1000ac

    goto :goto_1

    :cond_2
    const v1, 0x7f1000a8

    :goto_1
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setMessage(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSaveVideoDialog:Lzui/app/ProgressDialogX;

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->show()V

    .line 621
    iput-boolean p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isSaveVideo:Z

    .line 622
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 623
    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/sql/Date;-><init>(J)V

    .line 624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    const-string v4, "VID_"

    goto :goto_2

    :cond_3
    const-string v4, "IMG_"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mDstVideoDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 627
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_4
    if-eqz p1, :cond_5

    const-string v3, ".mp4"

    goto :goto_3

    :cond_5
    const-string v3, ".jpg"

    .line 630
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newVideoPath = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " trimstartTime "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mTrimStartTime:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " trimEndTime: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mTrimEndTime:J

    div-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " delete orginFile "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-boolean v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->useSystemTrim:Z

    if-eqz v1, :cond_6

    .line 636
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;

    invoke-direct {v2, p0, p1, v0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$TrimVideoTask;-><init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;ZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mTrimVideoTask:Lcom/zui/gallery/util/Future;

    :cond_6
    return-void
.end method

.method private stringForTime(J)Ljava/lang/String;
    .locals 5

    long-to-int p1, p1

    .line 579
    div-int/lit16 p1, p1, 0x3e8

    .line 580
    rem-int/lit8 p2, p1, 0x3c

    .line 581
    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    .line 582
    div-int/lit16 p1, p1, 0xe10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lez p1, :cond_0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 584
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v3, [Ljava/lang/Object;

    .line 586
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "%02d:%02d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected abstract doSave(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public enableDoneBtn(Z)V
    .locals 0

    return-void
.end method

.method protected hasEnoughSpace()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract initView()V
.end method

.method protected abstract isPlaying()Z
.end method

.method protected isTrimValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadCover(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/media/MediaMetadataRetriever;)V
    .locals 3

    .line 892
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/32 v0, 0x186a0

    const/4 v2, 0x2

    .line 895
    invoke-virtual {p2, v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 896
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 898
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void

    .line 902
    :cond_2
    invoke-virtual {p0, p2}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->scaleFrameBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 903
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 905
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return-void

    .line 909
    :cond_4
    invoke-virtual {p0, p2}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->showCoverWhenFirstLoad(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected abstract loadThumbnailFrame()V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 505
    invoke-super {p0, p1, p2, p3}, Lcom/zui/gallery/app/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x457

    if-ne p1, v0, :cond_2

    const-string p1, "MicroVideo"

    if-nez p3, :cond_0

    .line 508
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "yykkmm onActivityResult data null,   resultCode:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 511
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 515
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 516
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "yykkmm onActivityResult \u6e32\u67d3\u6210\u529f, outputVideoUri:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object p3, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 526
    :try_start_0
    invoke-virtual {p0, v0, p3, p2}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->doSave(ZLjava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object p3, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v0

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    invoke-static {p3, v1, p2, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    const-string/jumbo p2, "yykkmm trim finished "

    .line 531
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string/jumbo p3, "yykkmm trim video exception "

    .line 533
    invoke-static {p1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 538
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "yykkmm onActivityResult \u6e32\u67d3\u5931\u8d25, outputVideoUri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " ;  resultCode:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080168

    if-ne p1, v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->finish()V

    goto :goto_0

    :cond_0
    const v0, 0x7f080169

    if-ne p1, v0, :cond_1

    .line 465
    invoke-direct {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->showSaveDialog()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0802a5

    if-ne p1, v0, :cond_2

    .line 467
    invoke-direct {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->playOrPause()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 169
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const p1, 0x7f10026c

    .line 172
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 173
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0b0095

    .line 177
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->setContentView(I)V

    .line 179
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSecureCameraCall:Z

    .line 180
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lcom/zui/gallery/app/GalleryActivity;->NEED_SCREEN_BRIGHT:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->needBright:Z

    .line 181
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "item-offset"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->offset:J

    .line 182
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "item-length"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->length:J

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->offset:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " length ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->length:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MicroVideo"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->needBright:Z

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->setEnableBrightness(Z)V

    .line 185
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 186
    iget-boolean v5, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSecureCameraCall:Z

    if-eqz v5, :cond_1

    .line 187
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 188
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 189
    invoke-virtual {v0, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 190
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 191
    iget-object v6, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v5}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->keepScreenOn()V

    :goto_0
    const/high16 v5, 0x4000000

    .line 198
    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    const/high16 v5, -0x80000000

    .line 199
    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 200
    iput-object p0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 202
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    :cond_2
    const p1, 0x7f080168

    .line 205
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mBackBtn:Landroid/widget/ImageView;

    .line 206
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080169

    .line 207
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mDoneBtn:Landroid/widget/ImageView;

    .line 209
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080337

    .line 212
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSurface:Landroid/view/SurfaceView;

    const p1, 0x7f08008c

    .line 213
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mBlackView:Landroid/widget/FrameLayout;

    .line 214
    iget-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSecureCameraCall:Z

    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    const p1, 0x7f0802a2

    .line 218
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPicPreviewContainer:Landroid/widget/FrameLayout;

    const p1, 0x7f0802a1

    .line 219
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPicPreviewBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 220
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPicPreviewFront:Landroid/widget/ImageView;

    const p1, 0x7f080103

    .line 222
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    const/4 v0, 0x1

    .line 223
    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->setOnlyShowProgressBar(Z)V

    .line 224
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-virtual {p1, p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->setSeekBarListerner(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$seekBarListener;)V

    const p1, 0x7f0802a5

    .line 235
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPlayIconBtn:Landroid/widget/LinearLayout;

    .line 236
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPlayIconBtn:Landroid/widget/LinearLayout;

    const v5, 0x7f0802a6

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPlayIconImage:Landroid/widget/ImageView;

    .line 238
    new-instance p1, Lzui/app/ProgressDialogX;

    invoke-direct {p1, p0}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSaveVideoDialog:Lzui/app/ProgressDialogX;

    .line 239
    invoke-virtual {p1, v1}, Lzui/app/ProgressDialogX;->setProgressStyle(I)V

    .line 240
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSaveVideoDialog:Lzui/app/ProgressDialogX;

    const v5, 0x7f1000ac

    invoke-virtual {p0, v5}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lzui/app/ProgressDialogX;->setMessage(Ljava/lang/CharSequence;)V

    .line 242
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSaveVideoDialog:Lzui/app/ProgressDialogX;

    iget-object v5, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p1, v5}, Lzui/app/ProgressDialogX;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 244
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSaveVideoDialog:Lzui/app/ProgressDialogX;

    invoke-virtual {p1, v1}, Lzui/app/ProgressDialogX;->setCanceledOnTouchOutside(Z)V

    .line 246
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/GalleryApp;

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mApp:Lcom/zui/gallery/app/GalleryApp;

    .line 248
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v5, "media-item-path"

    .line 249
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "video_roatedegress"

    .line 250
    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mVideoRoateDegree:I

    const p1, 0x7f1002b0

    if-eqz v5, :cond_10

    .line 252
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_2

    .line 257
    :cond_4
    invoke-static {v5}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v5

    .line 258
    iget-object v6, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/LocalImage;

    iput-object v5, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mediaItem:Lcom/zui/gallery/data/LocalImage;

    if-nez v5, :cond_5

    .line 260
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 261
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->finish()V

    return-void

    .line 264
    :cond_5
    invoke-virtual {v5}, Lcom/zui/gallery/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "video type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->media_type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " video path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    .line 267
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 268
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->finish()V

    return-void

    .line 271
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->checkAndGetDescDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mDstVideoDir:Ljava/lang/String;

    .line 272
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mediaItem:Lcom/zui/gallery/data/LocalImage;

    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalImage;->getMediaType()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->media_type:I

    .line 274
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mediaItem:Lcom/zui/gallery/data/LocalImage;

    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalImage;->getBucketId()I

    move-result p1

    sget v5, Lcom/zui/gallery/util/MediaSetUtils;->SCREENRECORDER_VIDEO_ID:I

    if-ne p1, v5, :cond_7

    const/16 p1, 0x13

    .line 275
    iput p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->media_type:I

    .line 278
    :cond_7
    iget p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->media_type:I

    const/16 v5, 0xa

    if-ne p1, v5, :cond_8

    move p1, v0

    goto :goto_1

    :cond_8
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isSlowVideo:Z

    .line 279
    iget p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->media_type:I

    const/16 v5, 0xb

    if-ne p1, v5, :cond_9

    move v1, v0

    :cond_9
    iput-boolean v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->is4kVideo:Z

    .line 281
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    .line 282
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 283
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 285
    invoke-virtual {p1, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 286
    iget p1, v1, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mScreenWidth:I

    .line 287
    iget p1, v1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mScreenHeight:I

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenWidth ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mScreenWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mScreenHeight ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mScreenHeight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mScreenWidth:I

    iput p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPreviewWidth:I

    .line 290
    iget p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mScreenHeight:I

    iput p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPreviewHeight:I

    .line 291
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v0, :cond_a

    .line 292
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060187

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 293
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060150

    .line 294
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 295
    iget v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPreviewHeight:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPreviewHeight:I

    :cond_a
    const-string p1, "audio"

    .line 298
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 299
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->currentVolume:I

    .line 300
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->MAX_VOLUME:I

    .line 304
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    if-eqz p1, :cond_f

    .line 305
    iget p1, p1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->playPosition:I

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mCurrentPosition:J

    .line 306
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    iget-wide v0, p1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->trimStarTime:J

    iput-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mTrimStartTime:J

    .line 307
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    iget-wide v0, p1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->trimEndTime:J

    iput-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mTrimEndTime:J

    .line 308
    iget-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mCurrentPosition:J

    iget-wide v5, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mTrimStartTime:J

    cmp-long p1, v0, v5

    if-gez p1, :cond_b

    cmp-long p1, v5, v3

    if-gez p1, :cond_c

    :cond_b
    iget-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mCurrentPosition:J

    iget-wide v5, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mTrimEndTime:J

    cmp-long p1, v0, v5

    if-lez p1, :cond_d

    cmp-long p1, v5, v3

    if-lez p1, :cond_d

    .line 310
    :cond_c
    iget-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mTrimStartTime:J

    iput-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mCurrentPosition:J

    .line 312
    :cond_d
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    iget-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mCurrentPosition:J

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->initPlayBar(J)V

    .line 313
    iget-object v3, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    iget-wide v4, p1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->trimStarTime:J

    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    iget-wide v6, p1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->trimEndTime:J

    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    iget-boolean v8, p1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->trimBarActivity:Z

    invoke-virtual/range {v3 .. v8}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->initTrimBar(JJZ)V

    .line 314
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    iget v0, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->slowStartTime:I

    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    iget v1, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->slowEndTime:I

    iget-object v3, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    iget-boolean v3, v3, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->slowBarActivity:Z

    invoke-virtual {p1, v0, v1, v3}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->initSlowBar(IIZ)V

    .line 315
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSpeedBar:Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;

    if-eqz p1, :cond_e

    .line 316
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    iget v0, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->mult:I

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->updateChooseIndex(I)V

    .line 317
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSpeedBar:Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;

    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    iget-boolean v0, v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->speedBarShow:Z

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->updateVisable(Z)V

    .line 319
    :cond_e
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    iget-boolean p1, p1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->playing:Z

    iput-boolean p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isPlaying:Z

    .line 320
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    iget-boolean p1, p1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->isFirst:Z

    iput-boolean p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->first:Z

    .line 322
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->info:Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    iget-boolean p1, p1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->doneBtnEnable:Z

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mcurrentPosition "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mCurrentPosition:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " isPlaying "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isPlaying:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_f
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->loadThumbnailFrame()V

    return-void

    .line 253
    :cond_10
    :goto_2
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 254
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 387
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onDestroy()V

    .line 388
    iget-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSecureCameraCall:Z

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->release()V

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->currentCover:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->currentCover:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mTrimVideoTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_3

    .line 398
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mNoStorageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 401
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mNoStorageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 403
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSaveVideoDialog:Lzui/app/ProgressDialogX;

    if-eqz v0, :cond_5

    .line 404
    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    :cond_5
    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->currentCover:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v0, 0x18

    const/4 v1, 0x3

    const-string v2, "MicroVideo"

    const/4 v3, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_0

    .line 955
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/app/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    return v3

    .line 947
    :cond_1
    iget p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->currentVolume:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->currentVolume:I

    if-gtz p1, :cond_2

    const/4 p1, 0x0

    .line 948
    :cond_2
    iput p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->currentVolume:I

    const-string p1, "KEYCODE_VOLUME_UP"

    .line 949
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    iget p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->currentVolume:I

    invoke-virtual {p1, v1, p2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return v3

    .line 940
    :cond_3
    iget p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->currentVolume:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->currentVolume:I

    .line 941
    iget p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->MAX_VOLUME:I

    if-gt p1, p2, :cond_4

    goto :goto_0

    :cond_4
    move p1, p2

    :goto_0
    iput p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->currentVolume:I

    const-string p1, "KEYCODE_VOLUME_DOWN"

    .line 942
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    iget p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->currentVolume:I

    invoke-virtual {p1, v1, p2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return v3
.end method

.method protected onMediaScannerComplete(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 377
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 342
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onResume()V

    .line 343
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f1002b0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 345
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->finish()V

    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mNoStorageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->hasEnoughSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mNoStorageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 355
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->setDarkStatusIcon(Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 360
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "MicroVideo"

    const-string v1, "onSaveInstanceState"

    .line 361
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    invoke-direct {v1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;-><init>()V

    .line 363
    iget-boolean v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->first:Z

    iput-boolean v2, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->isFirst:Z

    .line 364
    iget-boolean v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isPlaying:Z

    iput-boolean v2, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->playing:Z

    .line 365
    iget-object v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mDoneBtn:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->doneBtnEnable:Z

    .line 366
    iget-object v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->isTrimBarActivie()Z

    move-result v2

    iput-boolean v2, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->trimBarActivity:Z

    .line 367
    iget v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mVideoWidth:I

    iput v2, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->videoWidth:I

    .line 368
    iget v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mVideoHeight:I

    iput v2, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->videoHeight:I

    .line 369
    iget-wide v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mCurrentPosition:J

    long-to-int v2, v2

    iput v2, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->playPosition:I

    .line 370
    iget-wide v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mTrimStartTime:J

    iput-wide v2, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->trimStarTime:J

    .line 371
    iget-wide v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mTrimEndTime:J

    iput-wide v2, v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->trimEndTime:J

    .line 372
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 382
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mMoveY:F

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mMoveX:F

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mDownY:F

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mDownX:F

    .line 438
    :goto_0
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onTrimBarUpdate()V
    .locals 0

    .line 1036
    invoke-virtual {p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->isTrimValid()Z

    return-void
.end method

.method public onTrimingMove(II)V
    .locals 2

    int-to-long v0, p1

    .line 416
    iput-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mTrimStartTime:J

    int-to-long p1, p2

    .line 417
    iput-wide p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mTrimEndTime:J

    return-void
.end method

.method public onTrimingStart()V
    .locals 0

    return-void
.end method

.method protected abstract pause()V
.end method

.method protected abstract play()V
.end method

.method public playHidenBestFrameAnim()V
    .locals 3

    .line 820
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPicPreviewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 821
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    .line 822
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 823
    new-instance v1, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$6;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$6;-><init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 837
    iget-object v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPicPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public scaleFrameBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    if-eqz p1, :cond_2

    .line 876
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 878
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 879
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " h ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MicroVideo"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mScreenWidth:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mScreenHeight:I

    if-eq v1, v2, :cond_2

    .line 883
    :cond_1
    iget v2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mScreenWidth:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 884
    iget v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mScreenHeight:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 885
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x1

    .line 886
    invoke-static {p1, v0, v1}, Lcom/zui/gallery/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public setBottomFrameThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->setViewFrameBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public showCoverWhenFirstLoad(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 842
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    new-instance v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$7;-><init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected showNoStorageDialog()V
    .locals 0

    return-void
.end method

.method public updatePlayIcon(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 921
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPlayIconImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 923
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPlayIconImage:Landroid/widget/ImageView;

    const v0, 0x7f07021f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 924
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->mPlayIconImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
