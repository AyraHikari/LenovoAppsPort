.class public abstract Lcom/zui/gallery/app/VideoEditBaseActivity;
.super Lcom/zui/gallery/app/BaseActivity;
.source "VideoEditBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zui/gallery/ui/videoedit/OperationBar$seekBarListener;
.implements Lcom/zui/gallery/ui/videoedit/OperationBar$TrimingBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;,
        Lcom/zui/gallery/app/VideoEditBaseActivity$TrimVideoTask;
    }
.end annotation


# static fields
.field private static final KEY_ISPLAYING:Ljava/lang/String; = "ISPLAYING"

.field private static final KEY_VIDEOPOSITION:Ljava/lang/String; = "VIDEOPOSITION"

.field private static final REQUEST_CODE_VUE_EDIT:I = 0x457

.field protected static final TIME_NONE:I = -0x1

.field private static final VIDEO_NAME_FORMAT:Ljava/lang/String; = "yyyyMMdd_HHmmss"

.field private static final VIDEO_NAME_FORMAT_FOR_SCREEN_RECORD:Ljava/lang/String; = "yyyy-MM-dd-HH-mm-ss"

.field private static final VIDEO_NAME_PREFIX:Ljava/lang/String; = "VID_"

.field private static final VIDEO_NAME_SCREEN_RECORD_PREFIX:Ljava/lang/String; = "vid-sr-"


# instance fields
.field private MAX_VOLUME:I

.field public final TAG:Ljava/lang/String;

.field protected currentCover:Landroid/graphics/Bitmap;

.field private currentVolume:I

.field private dialog:Lzui/app/ActionDialog;

.field private volatile first:Z

.field protected info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

.field protected is4kVideo:Z

.field private volatile isFrameThumbnailReady:Z

.field protected volatile isPlayerReady:Z

.field protected volatile isPlaying:Z

.field protected isSlowVideo:Z

.field private volatile isThumbnailReady:Z

.field protected lastSeekPosition:J

.field private mActionBar:Landroid/widget/LinearLayout;

.field protected mApp:Lcom/zui/gallery/app/GalleryApp;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackBtn:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field protected mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

.field protected mCurrentPosition:J

.field protected mCurrentVideoFilterPosition:I

.field private mDoneBtn:Landroid/widget/LinearLayout;

.field private mDownX:F

.field private mDownY:F

.field protected mDstVideoDir:Ljava/lang/String;

.field protected mFilte_action:Landroid/widget/ImageView;

.field protected final mHandler:Landroid/os/Handler;

.field private volatile mHasPaused:Z

.field protected mHeight:I

.field protected mIsCompiled:Z

.field private mIsPort8K:Z

.field private mIsRatio:Z

.field private mMoveX:F

.field private mMoveY:F

.field private mNoStorageDialog:Landroid/app/AlertDialog;

.field protected mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

.field protected mNvsVideoClip:Lcom/meicam/sdk/NvsVideoClip;

.field protected mNvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

.field protected mPicPreviewBack:Landroid/widget/ImageView;

.field protected mPicPreviewContainer:Landroid/widget/FrameLayout;

.field protected mPicPreviewFront:Landroid/widget/ImageView;

.field private mPlayIconBtn:Landroid/widget/LinearLayout;

.field private mPlayIconImage:Landroid/widget/ImageView;

.field protected mPreviewHeight:I

.field protected mPreviewWidth:I

.field private mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field private mSaveVideoDialog:Lzui/app/ProgressDialogX;

.field protected mSaveVideoWhich:I

.field protected mScreenHeight:I

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field protected mScreenWidth:I

.field protected mSecureCameraCall:Z

.field protected mSpeedBar:Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;

.field protected mSrcVideoPath:Ljava/lang/String;

.field private mTimeTextView:Landroid/widget/TextView;

.field protected mTimeline:Lcom/meicam/sdk/NvsTimeline;

.field private mTitleBar:Landroid/widget/LinearLayout;

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

.field protected mTrim_action:Landroid/widget/ImageView;

.field private mVUEBtn:Landroid/widget/TextView;

.field protected mVideoContainer:Landroid/widget/FrameLayout;

.field protected mVideoDuration:J

.field protected mVideoFilterAdapter:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;

.field protected mVideoFilterRcl:Landroidx/recyclerview/widget/RecyclerView;

.field protected mVideoFxPackageId:Ljava/lang/String;

.field protected mVideoHeight:I

.field protected mVideoRoateDegree:I

.field protected mVideoWidth:I

.field protected mWidth:I

.field protected mediaItem:Lcom/zui/gallery/data/LocalVideo;

.field protected media_type:I

.field private needBright:Z

.field private onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private useSystemTrim:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 100
    invoke-direct {p0}, Lcom/zui/gallery/app/BaseActivity;-><init>()V

    const-string v0, "VideoEditActivity"

    .line 104
    iput-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->TAG:Ljava/lang/String;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 115
    iput-wide v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimStartTime:J

    .line 116
    iput-wide v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimEndTime:J

    .line 117
    iput-wide v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mCurrentPosition:J

    .line 118
    iput-wide v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoDuration:J

    const/4 v0, -0x1

    .line 136
    iput v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->media_type:I

    const/4 v1, 0x0

    .line 137
    iput-boolean v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->isSlowVideo:Z

    .line 138
    iput-boolean v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->is4kVideo:Z

    const/4 v2, 0x1

    .line 139
    iput-boolean v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->useSystemTrim:Z

    .line 140
    iput-boolean v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->isPlaying:Z

    .line 141
    iput-boolean v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->isThumbnailReady:Z

    .line 142
    iput-boolean v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->isFrameThumbnailReady:Z

    .line 143
    iput-boolean v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->isPlayerReady:Z

    .line 144
    iput-boolean v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mHasPaused:Z

    .line 145
    iput-boolean v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->first:Z

    .line 172
    new-instance v2, Lcom/zui/gallery/app/VideoEditBaseActivity$1;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/VideoEditBaseActivity$1;-><init>(Lcom/zui/gallery/app/VideoEditBaseActivity;)V

    iput-object v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    iput v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mCurrentVideoFilterPosition:I

    .line 185
    iput v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSaveVideoWhich:I

    const-string v0, ""

    .line 187
    iput-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoFxPackageId:Ljava/lang/String;

    .line 193
    iput-boolean v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mIsCompiled:Z

    .line 1006
    new-instance v0, Lcom/zui/gallery/app/VideoEditBaseActivity$5;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/VideoEditBaseActivity$5;-><init>(Lcom/zui/gallery/app/VideoEditBaseActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 1075
    new-instance v0, Lcom/zui/gallery/app/VideoEditBaseActivity$6;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/VideoEditBaseActivity$6;-><init>(Lcom/zui/gallery/app/VideoEditBaseActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method private LaunchVue()V
    .locals 5

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "yykkmm  video path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 650
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "path"

    .line 651
    iget-object v4, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 652
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 653
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "yykkmm generated json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "video.vue.android.action.VIDEO_EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "shots"

    .line 657
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "frame"

    const-string v3, "PORTRAIT"

    .line 658
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 661
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x457

    .line 662
    invoke-virtual {p0, v2, v0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 664
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "leapp://ptn/appinfo.do?packagename=video.vue.android&versioncode=0&origin=0"

    .line 665
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 666
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 667
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 668
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "yykkmm Exception e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/VideoEditBaseActivity;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->startTrim(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/VideoEditBaseActivity;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->avatarVideoFilterValue()V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/VideoEditBaseActivity;)Lzui/app/ProgressDialogX;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSaveVideoDialog:Lzui/app/ProgressDialogX;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/VideoEditBaseActivity;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/VideoEditBaseActivity;)Landroid/media/MediaScannerConnection$OnScanCompletedListener;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    return-object p0
.end method

.method private avatarVideoFilter()V
    .locals 4

    .line 643
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->VIDEODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_FILTER:Lcom/zui/gallery/util/AvatarUtils$Action;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    return-void
.end method

.method private avatarVideoFilterValue()V
    .locals 5

    .line 786
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->VIDEODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_CLIP_SAVE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    .line 787
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoFilterAdapter:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->getVideoFilterDataList()Ljava/util/ArrayList;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 790
    iget v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mCurrentVideoFilterPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v0

    .line 791
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 792
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 793
    iget v4, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mCurrentVideoFilterPosition:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->VIDEODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v4, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_FILTER:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v0, v4, v2, v3, v1}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;ILjava/util/Map;)V

    :cond_0
    return-void
.end method

.method private checkAndGetDescDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1436
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 1438
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 1441
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private cleanKeepScreenOn()V
    .locals 3

    .line 1429
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VideoEditActivity"

    const-string v2, "clean keep screen on exception"

    .line 1431
    invoke-static {v1, v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private compileVideo(Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 883
    iput-boolean v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mIsCompiled:Z

    .line 884
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    .line 885
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileConfigurations(Ljava/util/Hashtable;)V

    .line 886
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsStreamingContext;->getCompileConfigurations()Ljava/util/Hashtable;

    move-result-object v1

    const v2, 0x989680

    .line 889
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "bitrate"

    if-nez v1, :cond_0

    .line 888
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 889
    invoke-virtual {v4, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    iget-object v2, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v2, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileConfigurations(Ljava/util/Hashtable;)V

    goto :goto_0

    .line 892
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 894
    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    iget-object v2, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v2, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileConfigurations(Ljava/util/Hashtable;)V

    .line 899
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mIsPort8K:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mIsRatio:Z

    if-eqz v1, :cond_2

    .line 900
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v2, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsTimeline;->getVideoRes()Lcom/meicam/sdk/NvsVideoResolution;

    move-result-object v2

    iget v2, v2, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    invoke-virtual {v1, v2}, Lcom/meicam/sdk/NvsStreamingContext;->setCustomCompileVideoHeight(I)V

    goto :goto_1

    .line 902
    :cond_2
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v2, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsTimeline;->getVideoRes()Lcom/meicam/sdk/NvsVideoResolution;

    move-result-object v2

    iget v2, v2, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    invoke-virtual {v1, v2}, Lcom/meicam/sdk/NvsStreamingContext;->setCustomCompileVideoHeight(I)V

    .line 904
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->isTrimValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 905
    iget-object v2, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v3, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    iget-wide v4, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimStartTime:J

    iget-wide v6, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimEndTime:J

    const/16 v9, 0x100

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v2 .. v11}, Lcom/meicam/sdk/NvsStreamingContext;->compileTimeline(Lcom/meicam/sdk/NvsTimeline;JJLjava/lang/String;III)Z

    goto :goto_2

    .line 908
    :cond_3
    iget-object v12, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v13, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    iget-wide v14, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimStartTime:J

    iget-wide v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoDuration:J

    const/16 v19, 0x100

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-wide/from16 v16, v1

    move-object/from16 v18, p1

    invoke-virtual/range {v12 .. v21}, Lcom/meicam/sdk/NvsStreamingContext;->compileTimeline(Lcom/meicam/sdk/NvsTimeline;JJLjava/lang/String;III)Z

    :goto_2
    return-void
.end method

.method private getVideoDisplayRectF()Landroid/graphics/RectF;
    .locals 9

    .line 424
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenWidth()I

    move-result v0

    .line 425
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenHeight()I

    move-result v1

    .line 430
    iget v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mWidth:I

    const/4 v3, 0x0

    if-lez v2, :cond_2

    iget v4, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mHeight:I

    if-lez v4, :cond_2

    mul-int v5, v2, v1

    .line 431
    div-int/2addr v5, v4

    mul-int v6, v4, v0

    .line 432
    div-int/2addr v6, v2

    int-to-float v2, v2

    int-to-float v4, v4

    div-float/2addr v2, v4

    int-to-float v4, v0

    int-to-float v7, v1

    div-float/2addr v4, v7

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    sub-int v2, v1, v6

    .line 436
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v6, v1

    .line 437
    div-int/lit8 v6, v6, 0x2

    move v5, v0

    goto :goto_1

    :cond_1
    sub-int v2, v0, v5

    .line 439
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v5, v0

    .line 440
    div-int/lit8 v5, v5, 0x2

    move v6, v1

    move v8, v3

    move v3, v2

    move v2, v8

    goto :goto_1

    :cond_2
    move v5, v0

    move v6, v1

    move v2, v3

    .line 443
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "screenWidth:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " screenHeight:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video display left:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " top:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " right:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bottom:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, v3

    int-to-float v2, v2

    int-to-float v3, v5

    int-to-float v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private hasEnoughSpaceForVideo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private initCompileCallBack(Ljava/lang/String;Z)V
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    new-instance v1, Lcom/zui/gallery/app/VideoEditBaseActivity$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/zui/gallery/app/VideoEditBaseActivity$4;-><init>(Lcom/zui/gallery/app/VideoEditBaseActivity;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileCallback2(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;)V

    return-void
.end method

.method private initNvsStreamContext()V
    .locals 6

    .line 381
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "assets:/meishe20.lic"

    .line 384
    invoke-static {p0, v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->init(Landroid/app/Activity;Ljava/lang/String;I)Lcom/meicam/sdk/NvsStreamingContext;

    .line 385
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    .line 388
    :cond_0
    new-instance v0, Lcom/meicam/sdk/NvsAudioResolution;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsAudioResolution;-><init>()V

    const/4 v2, 0x2

    .line 389
    iput v2, v0, Lcom/meicam/sdk/NvsAudioResolution;->channelCount:I

    const v2, 0xac44

    .line 390
    iput v2, v0, Lcom/meicam/sdk/NvsAudioResolution;->sampleRate:I

    .line 392
    new-instance v2, Lcom/meicam/sdk/NvsVideoResolution;

    invoke-direct {v2}, Lcom/meicam/sdk/NvsVideoResolution;-><init>()V

    .line 393
    new-instance v3, Lcom/meicam/sdk/NvsRational;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v4}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    iput-object v3, v2, Lcom/meicam/sdk/NvsVideoResolution;->imagePAR:Lcom/meicam/sdk/NvsRational;

    .line 395
    iget-object v3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mediaItem:Lcom/zui/gallery/data/LocalVideo;

    invoke-virtual {v3}, Lcom/zui/gallery/data/LocalVideo;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getMediaItemReal(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "90"

    .line 396
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "270"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mIsPort8K:Z

    .line 397
    iget v3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mWidth:I

    iget v5, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mHeight:I

    if-le v3, v5, :cond_3

    move v1, v4

    :cond_3
    iput-boolean v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mIsRatio:Z

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initNvsStreamContext: mWidth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  mHeight: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VideoEditActivity"

    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initNvsStreamContext: isPort8K: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mIsPort8K:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "  isRatio: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mIsRatio:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-boolean v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mIsPort8K:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mIsRatio:Z

    if-eqz v1, :cond_4

    .line 401
    iget v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mWidth:I

    iput v1, v2, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    .line 402
    iget v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mHeight:I

    iput v1, v2, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    goto :goto_2

    .line 404
    :cond_4
    iget v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mHeight:I

    iput v1, v2, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    .line 405
    iget v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mWidth:I

    iput v1, v2, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    .line 409
    :goto_2
    new-instance v1, Lcom/meicam/sdk/NvsRational;

    const/16 v5, 0x1e

    invoke-direct {v1, v5, v4}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    .line 411
    iget-object v4, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v4, v2, v1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->createTimeline(Lcom/meicam/sdk/NvsVideoResolution;Lcom/meicam/sdk/NvsRational;Lcom/meicam/sdk/NvsAudioResolution;)Lcom/meicam/sdk/NvsTimeline;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    if-nez v0, :cond_5

    const-string v0, "Create mTimeline fail"

    .line 414
    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->finish()V

    :cond_5
    return-void
.end method

.method private keepScreenOn()V
    .locals 3

    .line 1421
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VideoEditActivity"

    const-string v2, "keep screen on exception"

    .line 1423
    invoke-static {v1, v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private playAndPause()V
    .locals 5

    .line 589
    iget v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mMoveY:F

    iget v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mDownY:F

    sub-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/high16 v4, 0x41a00000    # 20.0f

    if-lez v2, :cond_0

    sub-float/2addr v0, v1

    .line 590
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    iget v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mMoveY:F

    iget v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mDownY:F

    sub-float v2, v0, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    sub-float/2addr v0, v1

    .line 593
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    goto :goto_0

    .line 595
    :cond_1
    iget v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mMoveX:F

    iget v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mDownX:F

    sub-float v2, v0, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    sub-float/2addr v0, v1

    .line 596
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    goto :goto_0

    .line 598
    :cond_2
    iget v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mMoveX:F

    iget v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mDownX:F

    sub-float v2, v0, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    sub-float/2addr v0, v1

    .line 599
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 602
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getVideoDisplayRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 603
    iget v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mMoveX:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mMoveX:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mMoveY:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mMoveY:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_4

    .line 605
    invoke-direct {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->playOrPause()V

    :cond_4
    return-void
.end method

.method private playOrPause()V
    .locals 1

    .line 735
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->playHidenBestFrameAnim()V

    .line 736
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->pause()V

    goto :goto_0

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->play()V

    .line 741
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->isPlaying()Z

    return-void
.end method

.method private scaleFrameBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p1, :cond_2

    .line 1149
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1151
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1152
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1153
    iget v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPreviewWidth:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPreviewHeight:I

    if-eq v1, v2, :cond_2

    .line 1155
    :cond_1
    iget v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPreviewWidth:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 1156
    iget v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPreviewHeight:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1157
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x1

    .line 1158
    invoke-static {p1, v0, v1}, Lcom/zui/gallery/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private setDarkStatusIcon(Z)V
    .locals 2

    .line 472
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    or-int/lit16 p1, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, -0x2001

    .line 480
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method private showSaveDialog()V
    .locals 3

    .line 758
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->dialog:Lzui/app/ActionDialog;

    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {v0}, Lzui/app/ActionDialog;->dismiss()V

    .line 760
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->isTrimValid()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->isFilterValid()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 779
    :cond_1
    iget-boolean v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->isSlowVideo:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 780
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->startTrim(Z)V

    goto :goto_1

    .line 761
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 762
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->getActionDialogBuilder(Landroid/app/Activity;)Lzui/app/ActionDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/VideoEditBaseActivity$3;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/VideoEditBaseActivity$3;-><init>(Lcom/zui/gallery/app/VideoEditBaseActivity;)V

    .line 763
    invoke-virtual {v1, v0, v2}, Lzui/app/ActionDialog$Builder;->setOptionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    const v1, 0x7f100068

    new-instance v2, Lcom/zui/gallery/app/VideoEditBaseActivity$2;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/VideoEditBaseActivity$2;-><init>(Lcom/zui/gallery/app/VideoEditBaseActivity;)V

    .line 773
    invoke-virtual {v0, v1, v2}, Lzui/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    .line 778
    invoke-virtual {v0}, Lzui/app/ActionDialog$Builder;->show()Lzui/app/ActionDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->dialog:Lzui/app/ActionDialog;

    :cond_3
    :goto_1
    return-void
.end method

.method private startTrim(Z)V
    .locals 7

    .line 836
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->isTrimValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->isFilterValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->hasEnoughSpaceForVideo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 853
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->showNoStorageDialog()V

    return-void

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSaveVideoDialog:Lzui/app/ProgressDialogX;

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->show()V

    .line 859
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->media_type:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "yyyyMMdd_HHmmss"

    :goto_0
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 860
    new-instance v2, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/sql/Date;-><init>(J)V

    .line 861
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->media_type:I

    if-ne v5, v3, :cond_3

    const-string/jumbo v3, "vid-sr-"

    goto :goto_1

    :cond_3
    const-string v3, "VID_"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 862
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mDstVideoDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 864
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 866
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".mp4"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newVideoPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " trimstartTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimStartTime:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " trimEndTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimEndTime:J

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " delete orginFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-boolean v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->useSystemTrim:Z

    if-eqz v1, :cond_5

    .line 874
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->initCompileCallBack(Ljava/lang/String;Z)V

    .line 875
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->compileVideo(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private stringForTime(J)Ljava/lang/String;
    .locals 8

    const-wide/32 v0, 0xf4240

    .line 804
    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    .line 805
    rem-long v2, p1, v0

    .line 806
    div-long v4, p1, v0

    rem-long/2addr v4, v0

    const-wide/16 v0, 0xe10

    .line 807
    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 810
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v7

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v7, [Ljava/lang/Object;

    .line 812
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "%02d:%02d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateTrimBar()V
    .locals 7

    .line 745
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTitleBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimEndTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-wide v5, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimStartTime:J

    cmp-long v3, v5, v3

    if-ltz v3, :cond_1

    sub-long/2addr v1, v5

    .line 747
    iget-wide v3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoDuration:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 748
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTimeTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/zui/gallery/app/VideoEditBaseActivity;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTitleBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 751
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 753
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->onTrimBarUpdate()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract doSave(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public enableDoneBtn(Z)V
    .locals 1

    .line 1204
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mDoneBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method protected getMediaItemReal(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const-string v0, "VideoEditActivity"

    .line 449
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 452
    :try_start_0
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMediaItemReal error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 v2, 0x9

    .line 457
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12

    .line 458
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x13

    .line 459
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x18

    .line 460
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initNvsStreamContext: contentUri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  width:  "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  height:  "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  duration:  "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  rotation: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object v5
.end method

.method protected hasEnoughSpace()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract initView()V
.end method

.method protected isFilterValid()Z
    .locals 2

    .line 827
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoFxPackageId:Ljava/lang/String;

    const-string v1, "isFilterValid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoFxPackageId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isPlaying()Z
.end method

.method protected isTrimValid()Z
    .locals 7

    .line 817
    iget-wide v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-wide v4, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimStartTime:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimEndTime:J

    cmp-long v6, v2, v0

    if-gtz v6, :cond_1

    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "VideoEditActivity"

    const-string v1, "Trim invalid "

    .line 820
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public loadCover(Lcom/zui/gallery/util/ThreadPool$JobContext;)V
    .locals 2

    .line 1164
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1166
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mediaItem:Lcom/zui/gallery/data/LocalVideo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/LocalVideo;->requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/gallery/util/ThreadPool$Job;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1168
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 1170
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void

    .line 1174
    :cond_2
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->scaleFrameBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1175
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 1177
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return-void

    .line 1181
    :cond_4
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->showCoverWhenFirstLoad(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected abstract loadThumbnailFrame()V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 680
    invoke-super {p0, p1, p2, p3}, Lcom/zui/gallery/app/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x457

    if-ne p1, v0, :cond_2

    const-string p1, "VideoEditActivity"

    if-nez p3, :cond_0

    .line 683
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "yykkmm onActivityResult data null,   resultCode:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 686
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 690
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 691
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "yykkmm onActivityResult \u6e32\u67d3\u6210\u529f, outputVideoUri:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object p3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 701
    :try_start_0
    invoke-virtual {p0, v0, p3, p2}, Lcom/zui/gallery/app/VideoEditBaseActivity;->doSave(ZLjava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object p3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v0

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    invoke-static {p3, v1, p2, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    const-string/jumbo p2, "yykkmm trim finished "

    .line 706
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string/jumbo p3, "yykkmm trim video exception "

    .line 708
    invoke-static {p1, p3, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 713
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

    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 611
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 623
    :sswitch_0
    invoke-direct {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->LaunchVue()V

    goto :goto_0

    .line 626
    :sswitch_1
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrim_action:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 627
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mFilte_action:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 628
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->setVisibility(I)V

    .line 629
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoFilterRcl:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 617
    :sswitch_2
    invoke-direct {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->playOrPause()V

    goto :goto_0

    .line 632
    :sswitch_3
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->setVisibility(I)V

    .line 633
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoFilterRcl:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 634
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrim_action:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 635
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mFilte_action:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 636
    invoke-direct {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->avatarVideoFilter()V

    goto :goto_0

    .line 620
    :sswitch_4
    invoke-direct {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->showSaveDialog()V

    goto :goto_0

    .line 613
    :sswitch_5
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->pause()V

    .line 614
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->finish()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080086 -> :sswitch_5
        0x7f080144 -> :sswitch_4
        0x7f0801af -> :sswitch_3
        0x7f0802a5 -> :sswitch_2
        0x7f080388 -> :sswitch_1
        0x7f0803ac -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 720
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "VideoEditActivity"

    const-string v0, "onConfigurationChanged "

    .line 721
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f10026c

    const/4 v0, 0x0

    .line 723
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 724
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->finish()V

    return-void

    .line 727
    :cond_0
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->refresh(Landroid/content/Context;)V

    .line 728
    iget v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSaveVideoWhich:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSaveVideoWhich:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSaveVideoDialog:Lzui/app/ProgressDialogX;

    invoke-virtual {p1}, Lzui/app/ProgressDialogX;->show()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 197
    invoke-super/range {p0 .. p1}, Lcom/zui/gallery/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->isInMultiWindowMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const v1, 0x7f10026c

    .line 200
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->finish()V

    return-void

    :cond_0
    const v2, 0x7f0b00ec

    .line 205
    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/VideoEditBaseActivity;->setContentView(I)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v4, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSecureCameraCall:Z

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v4, Lcom/zui/gallery/app/GalleryActivity;->NEED_SCREEN_BRIGHT:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->needBright:Z

    .line 208
    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/VideoEditBaseActivity;->setEnableBrightness(Z)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 210
    iget-boolean v4, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSecureCameraCall:Z

    if-eqz v4, :cond_1

    .line 211
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 212
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 213
    invoke-virtual {v2, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 214
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 215
    iget-object v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v4}, Lcom/zui/gallery/app/VideoEditBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 218
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->keepScreenOn()V

    :goto_0
    const/high16 v4, 0x4000000

    .line 222
    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    const/high16 v4, -0x80000000

    .line 223
    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 224
    iput-object v0, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mContext:Landroid/content/Context;

    const-string v2, "VideoEditActivity"

    if-eqz v1, :cond_2

    .line 226
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    :cond_2
    const v1, 0x7f080388

    .line 228
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrim_action:Landroid/widget/ImageView;

    const v1, 0x7f0801af

    .line 229
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mFilte_action:Landroid/widget/ImageView;

    .line 230
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrim_action:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    const v1, 0x7f08039f

    .line 231
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoFilterRcl:Landroidx/recyclerview/widget/RecyclerView;

    .line 232
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrim_action:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mFilte_action:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080086

    .line 234
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mBackBtn:Landroid/widget/LinearLayout;

    .line 235
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080144

    .line 236
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mDoneBtn:Landroid/widget/LinearLayout;

    .line 237
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 238
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mDoneBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080389

    .line 239
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTitleBar:Landroid/widget/LinearLayout;

    const v5, 0x7f080216

    .line 240
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTimeTextView:Landroid/widget/TextView;

    const v1, 0x7f08039d

    .line 242
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0802a2

    .line 244
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPicPreviewContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0802a1

    .line 245
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPicPreviewBack:Landroid/widget/ImageView;

    const v1, 0x7f0802a0

    .line 246
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPicPreviewFront:Landroid/widget/ImageView;

    const v1, 0x7f080103

    .line 248
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/videoedit/OperationBar;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 249
    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->setSeekBarListerner(Lcom/zui/gallery/ui/videoedit/OperationBar$seekBarListener;)V

    .line 250
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->setTrimListener(Lcom/zui/gallery/ui/videoedit/OperationBar$TrimingBarListener;)V

    const v1, 0x7f0803ac

    .line 252
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVUEBtn:Landroid/widget/TextView;

    const-string/jumbo v1, "video.vue.android"

    .line 253
    invoke-static {v0, v1}, Lcom/zui/gallery/util/GalleryUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVUEBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 256
    :cond_3
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVUEBtn:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    :goto_1
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVUEBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0802a5

    .line 260
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPlayIconBtn:Landroid/widget/LinearLayout;

    .line 261
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPlayIconBtn:Landroid/widget/LinearLayout;

    const v5, 0x7f0802a6

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPlayIconImage:Landroid/widget/ImageView;

    .line 263
    new-instance v1, Lzui/app/ProgressDialogX;

    invoke-direct {v1, v0}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSaveVideoDialog:Lzui/app/ProgressDialogX;

    .line 264
    invoke-virtual {v1, v3}, Lzui/app/ProgressDialogX;->setProgressStyle(I)V

    .line 265
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSaveVideoDialog:Lzui/app/ProgressDialogX;

    const v5, 0x7f1000ac

    invoke-virtual {v0, v5}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lzui/app/ProgressDialogX;->setMessage(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSaveVideoDialog:Lzui/app/ProgressDialogX;

    iget-object v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v5}, Lzui/app/ProgressDialogX;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 269
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSaveVideoDialog:Lzui/app/ProgressDialogX;

    invoke-virtual {v1, v3}, Lzui/app/ProgressDialogX;->setCanceledOnTouchOutside(Z)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/GalleryApp;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mApp:Lcom/zui/gallery/app/GalleryApp;

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "media-item-path"

    .line 274
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "video_roatedegress"

    .line 275
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoRoateDegree:I

    const v1, 0x7f1002b0

    if-eqz v5, :cond_13

    .line 277
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_5

    .line 282
    :cond_4
    invoke-static {v5}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v5

    .line 283
    iget-object v6, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/LocalVideo;

    iput-object v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mediaItem:Lcom/zui/gallery/data/LocalVideo;

    if-nez v5, :cond_5

    .line 285
    iget-object v2, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->finish()V

    return-void

    .line 289
    :cond_5
    invoke-virtual {v5}, Lcom/zui/gallery/data/LocalVideo;->getHeight()I

    move-result v5

    iput v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mHeight:I

    .line 290
    iget-object v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mediaItem:Lcom/zui/gallery/data/LocalVideo;

    invoke-virtual {v5}, Lcom/zui/gallery/data/LocalVideo;->getWidth()I

    move-result v5

    iput v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mWidth:I

    .line 291
    iget-object v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mediaItem:Lcom/zui/gallery/data/LocalVideo;

    invoke-virtual {v5}, Lcom/zui/gallery/data/LocalVideo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "video type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->media_type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " video path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    .line 294
    iget-object v2, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->finish()V

    return-void

    .line 298
    :cond_6
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->checkAndGetDescDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mDstVideoDir:Ljava/lang/String;

    .line 299
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mediaItem:Lcom/zui/gallery/data/LocalVideo;

    invoke-virtual {v1}, Lcom/zui/gallery/data/LocalVideo;->getMediaType()I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->media_type:I

    .line 301
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mediaItem:Lcom/zui/gallery/data/LocalVideo;

    invoke-virtual {v1}, Lcom/zui/gallery/data/LocalVideo;->getBucketId()I

    move-result v1

    sget v5, Lcom/zui/gallery/util/MediaSetUtils;->SCREENRECORDER_VIDEO_ID:I

    if-ne v1, v5, :cond_7

    const/16 v1, 0x13

    .line 302
    iput v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->media_type:I

    .line 305
    :cond_7
    iget v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->media_type:I

    const/16 v5, 0xa

    if-ne v1, v5, :cond_8

    move v1, v4

    goto :goto_2

    :cond_8
    move v1, v3

    :goto_2
    iput-boolean v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->isSlowVideo:Z

    .line 306
    iget v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->media_type:I

    const/16 v5, 0xb

    if-ne v1, v5, :cond_9

    move v1, v4

    goto :goto_3

    :cond_9
    move v1, v3

    :goto_3
    iput-boolean v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->is4kVideo:Z

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 309
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 310
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 311
    invoke-virtual {v1, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 312
    iget v1, v5, Landroid/graphics/Point;->x:I

    iput v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mScreenWidth:I

    .line 313
    iget v1, v5, Landroid/graphics/Point;->y:I

    iput v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mScreenHeight:I

    .line 314
    iget v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mScreenWidth:I

    iput v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPreviewWidth:I

    .line 315
    iput v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPreviewHeight:I

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_a

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f060187

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060150

    .line 319
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 320
    iget v6, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPreviewHeight:I

    sub-int/2addr v6, v1

    sub-int/2addr v6, v5

    iput v6, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPreviewHeight:I

    :cond_a
    const-string v1, "audio"

    .line 323
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    .line 324
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->currentVolume:I

    .line 325
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->MAX_VOLUME:I

    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->initNvsStreamContext()V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->initView()V

    .line 330
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    if-eqz v1, :cond_12

    .line 331
    iget-wide v5, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->playPosition:J

    iput-wide v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mCurrentPosition:J

    .line 332
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget-wide v5, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->trimStarTime:J

    iput-wide v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimStartTime:J

    .line 333
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget-wide v5, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->trimEndTime:J

    iput-wide v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimEndTime:J

    .line 334
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget-object v1, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->videoFxPackageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoFxPackageId:Ljava/lang/String;

    .line 335
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget v1, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->currentVideoFilterPosition:I

    iput v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mCurrentVideoFilterPosition:I

    .line 336
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget v1, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->saveVideoWhich:I

    iput v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSaveVideoWhich:I

    .line 337
    iget-wide v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mCurrentPosition:J

    iget-wide v7, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimStartTime:J

    cmp-long v1, v5, v7

    const-wide/16 v5, 0x0

    if-gez v1, :cond_b

    cmp-long v1, v7, v5

    if-gez v1, :cond_c

    :cond_b
    iget-wide v7, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mCurrentPosition:J

    iget-wide v9, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimEndTime:J

    cmp-long v1, v7, v9

    if-lez v1, :cond_d

    cmp-long v1, v9, v5

    if-lez v1, :cond_d

    .line 339
    :cond_c
    iget-wide v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimStartTime:J

    iput-wide v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mCurrentPosition:J

    .line 341
    :cond_d
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    iget-wide v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mCurrentPosition:J

    invoke-virtual {v1, v5, v6}, Lcom/zui/gallery/ui/videoedit/OperationBar;->initPlayBar(J)V

    .line 343
    iget-object v7, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    iget-wide v8, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mCurrentPosition:J

    iget-wide v10, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoDuration:J

    iget-wide v12, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimStartTime:J

    iget-wide v14, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimEndTime:J

    const/16 v16, 0x0

    invoke-virtual/range {v7 .. v16}, Lcom/zui/gallery/ui/videoedit/OperationBar;->setTimes(JJJJZ)V

    .line 347
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    if-eqz v1, :cond_f

    .line 348
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsVideoClip;->removeAllFx()Z

    .line 349
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    iget-object v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoFxPackageId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/meicam/sdk/NvsVideoClip;->appendPackagedFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;

    .line 350
    iget-wide v8, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimStartTime:J

    iget-wide v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoDuration:J

    cmp-long v1, v8, v5

    if-gtz v1, :cond_e

    .line 351
    iget-object v6, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v7, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const/4 v10, 0x1

    const/4 v11, 0x2

    invoke-virtual/range {v6 .. v11}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    goto :goto_4

    .line 353
    :cond_e
    iget-object v12, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v13, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    invoke-virtual/range {v12 .. v17}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    .line 355
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->play()V

    .line 356
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoFilterAdapter:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;

    iget v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mCurrentVideoFilterPosition:I

    invoke-virtual {v1, v5}, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->setPo(I)V

    .line 363
    :cond_f
    iget-object v6, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget-wide v7, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->trimStarTime:J

    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget-wide v9, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->trimEndTime:J

    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget-boolean v11, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->trimBarActivity:Z

    invoke-virtual/range {v6 .. v11}, Lcom/zui/gallery/ui/videoedit/OperationBar;->initTrimBar(JJZ)V

    .line 364
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    iget-object v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget v5, v5, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->slowStartTime:I

    iget-object v6, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget v6, v6, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->slowEndTime:I

    iget-object v7, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget-boolean v7, v7, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->slowBarActivity:Z

    invoke-virtual {v1, v5, v6, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->initSlowBar(IIZ)V

    .line 365
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSpeedBar:Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;

    if-eqz v1, :cond_10

    .line 366
    iget-object v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget v5, v5, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->mult:I

    invoke-virtual {v1, v5}, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->updateChooseIndex(I)V

    .line 367
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSpeedBar:Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;

    iget-object v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget-boolean v5, v5, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->speedBarShow:Z

    invoke-virtual {v1, v5}, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->updateVisable(Z)V

    .line 369
    :cond_10
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget-boolean v1, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->playing:Z

    iput-boolean v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->isPlaying:Z

    .line 370
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget-boolean v1, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->isFirst:Z

    iput-boolean v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->first:Z

    .line 372
    iget-object v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget-boolean v1, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->doneBtnEnable:Z

    .line 373
    iget-object v5, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mDoneBtn:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_11

    iget-boolean v1, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->isPlaying:Z

    if-nez v1, :cond_11

    move v3, v4

    :cond_11
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcurrentPosition "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mCurrentPosition:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " isPlaying "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->isPlaying:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->loadThumbnailFrame()V

    return-void

    .line 278
    :cond_13
    :goto_5
    iget-object v2, v0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 534
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onDestroy()V

    .line 535
    iget-boolean v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSecureCameraCall:Z

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->release()V

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->currentCover:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->currentCover:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimVideoTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_3

    .line 545
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 547
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNoStorageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 548
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNoStorageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 550
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSaveVideoDialog:Lzui/app/ProgressDialogX;

    if-eqz v0, :cond_5

    .line 551
    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    :cond_5
    const/4 v0, 0x0

    .line 553
    iput-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->currentCover:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v0, 0x18

    const/4 v1, 0x3

    const-string v2, "VideoEditActivity"

    const/4 v3, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_0

    .line 1227
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/app/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    return v3

    .line 1219
    :cond_1
    iget p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->currentVolume:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->currentVolume:I

    if-gtz p1, :cond_2

    const/4 p1, 0x0

    .line 1220
    :cond_2
    iput p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->currentVolume:I

    const-string p1, "KEYCODE_VOLUME_UP"

    .line 1221
    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    iget p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->currentVolume:I

    invoke-virtual {p1, v1, p2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return v3

    .line 1212
    :cond_3
    iget p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->currentVolume:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->currentVolume:I

    .line 1213
    iget p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->MAX_VOLUME:I

    if-gt p1, p2, :cond_4

    goto :goto_0

    :cond_4
    move p1, p2

    :goto_0
    iput p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->currentVolume:I

    const-string p1, "KEYCODE_VOLUME_DOWN"

    .line 1214
    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    iget p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->currentVolume:I

    invoke-virtual {p1, v1, p2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return v3
.end method

.method protected onMediaScannerComplete(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 524
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 485
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onResume()V

    .line 486
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f1002b0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 488
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->finish()V

    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNoStorageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->hasEnoughSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mNoStorageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 498
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->setDarkStatusIcon(Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 503
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "VideoEditActivity"

    const-string v1, "onSaveInstanceState"

    .line 504
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    invoke-direct {v1}, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;-><init>()V

    .line 506
    iget-boolean v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->first:Z

    iput-boolean v2, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->isFirst:Z

    .line 507
    iget-boolean v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->isPlaying:Z

    iput-boolean v2, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->playing:Z

    .line 508
    iget-object v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mDoneBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->doneBtnEnable:Z

    .line 509
    iget-object v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/videoedit/OperationBar;->isTrimBarActivie()Z

    move-result v2

    iput-boolean v2, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->trimBarActivity:Z

    .line 510
    iget v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoWidth:I

    iput v2, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->videoWidth:I

    .line 511
    iget v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoHeight:I

    iput v2, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->videoHeight:I

    .line 512
    iget-wide v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mCurrentPosition:J

    iput-wide v2, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->playPosition:J

    .line 513
    iget-wide v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimStartTime:J

    iput-wide v2, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->trimStarTime:J

    .line 514
    iget-wide v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimEndTime:J

    iput-wide v2, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->trimEndTime:J

    .line 515
    iget-object v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mVideoFxPackageId:Ljava/lang/String;

    iput-object v2, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->videoFxPackageId:Ljava/lang/String;

    .line 516
    iget v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mCurrentVideoFilterPosition:I

    iput v2, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->currentVideoFilterPosition:I

    .line 517
    iget v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mCurrentVideoFilterPosition:I

    iput v2, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->currentVideoFilterPosition:I

    .line 518
    iget v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSaveVideoWhich:I

    iput v2, v1, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->saveVideoWhich:I

    .line 519
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 529
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 570
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mMoveY:F

    .line 577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mMoveX:F

    goto :goto_0

    .line 580
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->playAndPause()V

    goto :goto_0

    .line 572
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mDownY:F

    .line 573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mDownX:F

    .line 585
    :goto_0
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onTrimBarUpdate()V
    .locals 3

    .line 1308
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->isTrimValid()Z

    move-result v0

    .line 1309
    invoke-virtual {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->isFilterValid()Z

    move-result v1

    .line 1310
    iget-boolean v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->isPlayerReady:Z

    if-eqz v2, :cond_2

    .line 1311
    iget-object v2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mDoneBtn:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public onTrimingMove(JJ)V
    .locals 0

    .line 563
    iput-wide p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimStartTime:J

    .line 564
    iput-wide p3, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mTrimEndTime:J

    .line 565
    invoke-direct {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->updateTrimBar()V

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

    .line 1096
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPicPreviewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    .line 1098
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1099
    new-instance v1, Lcom/zui/gallery/app/VideoEditBaseActivity$7;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/VideoEditBaseActivity$7;-><init>(Lcom/zui/gallery/app/VideoEditBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1113
    iget-object v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPicPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public setBottomFrameThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    if-eqz v0, :cond_0

    .line 1186
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->setViewFrameBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public showCoverWhenFirstLoad(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1118
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1119
    new-instance v0, Lcom/zui/gallery/app/VideoEditBaseActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/zui/gallery/app/VideoEditBaseActivity$8;-><init>(Lcom/zui/gallery/app/VideoEditBaseActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

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

    .line 1193
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPlayIconImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1195
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPlayIconImage:Landroid/widget/ImageView;

    const v0, 0x7f07021f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1196
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity;->mPlayIconImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
