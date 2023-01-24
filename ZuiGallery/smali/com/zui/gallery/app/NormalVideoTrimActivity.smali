.class public Lcom/zui/gallery/app/NormalVideoTrimActivity;
.super Lcom/zui/gallery/app/VideoEditBaseActivity;
.source "NormalVideoTrimActivity.java"

# interfaces
.implements Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;,
        Lcom/zui/gallery/app/NormalVideoTrimActivity$ExtractFrameLoader;
    }
.end annotation


# instance fields
.field effectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

.field private extractTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private filterFramTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private hasMoved:Z

.field private isPlayCoverGone:Z

.field private mAssetManager:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

.field protected mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

.field private mNvsLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mVideoFilterDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->hasMoved:Z

    .line 58
    iput-boolean v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isPlayCoverGone:Z

    .line 621
    new-instance v0, Lcom/zui/gallery/app/NormalVideoTrimActivity$3;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity$3;-><init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mProgressChecker:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/NormalVideoTrimActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoFilterDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/NormalVideoTrimActivity;)J
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->setProgress()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/NormalVideoTrimActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mProgressChecker:Ljava/lang/Runnable;

    return-object p0
.end method

.method private initNvsLiveWindow()V
    .locals 5

    .line 151
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 156
    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    if-nez v1, :cond_0

    const-string v0, "VideoEditActivity"

    const-string v1, "mTimeline ==null return "

    .line 157
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsTimeline;->appendVideoTrack()Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    .line 163
    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    iget-object v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/meicam/sdk/NvsVideoTrack;->appendClip(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    .line 164
    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoFilterAdapter:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;

    new-instance v2, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;-><init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;)V

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->setOnClickListener(Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$onClickListener;)V

    .line 185
    new-instance v1, Lcom/meicam/sdk/NvsLiveWindow;

    invoke-direct {v1, p0}, Lcom/meicam/sdk/NvsLiveWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    const/4 v2, 0x1

    .line 186
    invoke-virtual {v1, v2}, Lcom/meicam/sdk/NvsLiveWindow;->setFillMode(I)V

    .line 187
    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {v1, v0}, Lcom/meicam/sdk/NvsLiveWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, p0}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V

    .line 190
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoDuration:J

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    if-eqz v0, :cond_2

    .line 192
    iget-boolean v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isPlayerReady:Z

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    iget-wide v3, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoDuration:J

    invoke-virtual {v0, v3, v4}, Lcom/zui/gallery/ui/videoedit/OperationBar;->initDuration(J)V

    .line 194
    iput-boolean v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isPlayerReady:Z

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    iget-boolean v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isPlayerReady:Z

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->initReady(Z)V

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    iget-object v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {v0, v1, v2}, Lcom/meicam/sdk/NvsStreamingContext;->connectTimelineWithLiveWindow(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/sdk/NvsLiveWindow;)Z

    return-void
.end method

.method private installEffectVideoFx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 684
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installEffectVideoFx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "VideoEditActivity"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v8

    .line 689
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result p1

    .line 691
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "installEffectVideoFx: streamingContextError: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   effectContextError: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_1

    const/4 p1, 0x2

    if-ne v8, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 694
    :cond_1
    :goto_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private installEffectVideoFx(I)V
    .locals 8

    const-string p1, "assets:/videofilter/"

    const-string/jumbo v0, "wangcanlist"

    .line 656
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 657
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 658
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 660
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "videofilter"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 662
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileNameList.size is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 664
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "videofx"

    .line 665
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 666
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v6, "png"

    .line 667
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "lic"

    .line 669
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 670
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 668
    :cond_3
    :goto_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 674
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 675
    invoke-direct {p0, v2, v4}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->installEffectVideoFx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installEffectVideoFx error is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "wwww_list"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private parseNvsVideoThumbnail()V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/app/-$$Lambda$NormalVideoTrimActivity$PeSazOd3e4bGY8rL-Bal1EuTcsY;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/-$$Lambda$NormalVideoTrimActivity$PeSazOd3e4bGY8rL-Bal1EuTcsY;-><init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;)V

    new-instance v2, Lcom/zui/gallery/app/-$$Lambda$NormalVideoTrimActivity$7ed5jUyqZVMIzKDcNjZ4HJB89-0;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/-$$Lambda$NormalVideoTrimActivity$7ed5jUyqZVMIzKDcNjZ4HJB89-0;-><init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    return-void
.end method

.method private searchAssetData(Ljava/lang/String;)V
    .locals 2

    .line 649
    invoke-virtual {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->getNvAssetManager()Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mAssetManager:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    const/4 v1, 0x2

    .line 650
    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->searchReservedAssets(ILjava/lang/String;)V

    return-void
.end method

.method private setProgress()J
    .locals 14

    .line 593
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 594
    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-long v2, v0

    .line 595
    iput-wide v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mCurrentPosition:J

    .line 597
    iget-wide v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mCurrentPosition:J

    iget-wide v4, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTrimStartTime:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->hasMoved:Z

    if-nez v0, :cond_0

    .line 598
    iget-wide v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTrimStartTime:J

    iput-wide v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mCurrentPosition:J

    .line 599
    iget-object v4, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v5, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    iget-wide v6, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mCurrentPosition:J

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-virtual/range {v4 .. v9}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    const/4 v0, 0x1

    .line 602
    iput-boolean v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->hasMoved:Z

    .line 606
    :cond_0
    iget-wide v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mCurrentPosition:J

    iget-wide v4, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTrimEndTime:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    iget-wide v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTrimEndTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 607
    iget-object v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v3, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    iget-wide v4, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTrimStartTime:J

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    .line 610
    iget-wide v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTrimStartTime:J

    iput-wide v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mCurrentPosition:J

    .line 614
    :cond_1
    iget-object v4, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    iget-wide v5, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mCurrentPosition:J

    int-to-long v7, v1

    iget-wide v9, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTrimStartTime:J

    iget-wide v11, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTrimEndTime:J

    const/4 v13, 0x1

    invoke-virtual/range {v4 .. v13}, Lcom/zui/gallery/ui/videoedit/OperationBar;->setTimes(JJJJZ)V

    .line 618
    iget-wide v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mCurrentPosition:J

    return-wide v0
.end method

.method private whenRotating()V
    .locals 9

    .line 74
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 77
    :cond_0
    new-instance v0, Lcom/meicam/sdk/NvsLiveWindow;

    invoke-direct {v0, p0}, Lcom/meicam/sdk/NvsLiveWindow;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsLiveWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsLiveWindow;->setFillMode(I)V

    .line 84
    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 85
    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v1, v2, v0}, Lcom/meicam/sdk/NvsStreamingContext;->connectTimelineWithLiveWindow(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/sdk/NvsLiveWindow;)Z

    .line 86
    iget-object v3, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v4, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    return-void
.end method


# virtual methods
.method public centerSquareScaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-gtz p2, :cond_0

    goto :goto_2

    .line 562
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 563
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, p2, :cond_3

    if-le v2, p2, :cond_3

    .line 566
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/2addr v3, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/2addr v3, v4

    if-le v1, v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, p2

    :goto_0
    if-le v1, v2, :cond_2

    move v3, p2

    :cond_2
    const/4 v1, 0x1

    .line 571
    :try_start_0
    invoke-static {p1, v4, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v4, p2

    .line 576
    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, p2

    .line 577
    div-int/lit8 v3, v3, 0x2

    .line 579
    :try_start_1
    invoke-static {p1, v4, v3, p2, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 581
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, p2

    goto :goto_1

    :catch_0
    return-object v0

    :cond_3
    :goto_1
    return-object p1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public combinePrimaryBitmap()V
    .locals 9

    .line 339
    invoke-virtual {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06014f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 341
    invoke-virtual {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06033f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 345
    div-int/lit8 v2, v0, 0xa

    .line 346
    iget-object v3, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v4, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    new-instance v5, Lcom/meicam/sdk/NvsRational;

    const/16 v6, 0x9

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7, v5}, Lcom/meicam/sdk/NvsStreamingContext;->grabImageFromTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    .line 348
    invoke-static {v3, v2, v1, v4}, Lcom/zui/gallery/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 350
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 351
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0xa

    if-ge v4, v6, :cond_0

    int-to-float v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 354
    invoke-virtual {v1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/2addr v5, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 357
    :cond_0
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->setBottomFrameThumbnail(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method protected doSave(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 440
    iget-object p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mediaItem:Lcom/zui/gallery/data/LocalVideo;

    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalVideo;->delete()V

    :cond_0
    return-void
.end method

.method public getNvAssetManager()Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;
    .locals 2

    .line 631
    const-class v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    monitor-enter v0

    .line 632
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mAssetManager:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    if-nez v1, :cond_0

    .line 633
    invoke-static {}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->sharedInstance()Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mAssetManager:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    if-nez v1, :cond_0

    .line 635
    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->init(Landroid/content/Context;)Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mAssetManager:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    .line 638
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mAssetManager:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 638
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public initVideoFilters(Landroid/app/Activity;)V
    .locals 1

    const-string/jumbo v0, "videofilter"

    .line 643
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->searchAssetData(Ljava/lang/String;)V

    const/16 v0, 0x3ec

    .line 644
    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/meishefilter/AssetFxUtil;->getFilterData(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoFilterDataList:Ljava/util/ArrayList;

    .line 645
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->installEffectVideoFx(I)V

    return-void
.end method

.method public initView()V
    .locals 8

    .line 93
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    iget-boolean v0, v0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->playing:Z

    iput-boolean v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isPlaying:Z

    .line 96
    :cond_0
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "assets:/meishe20.lic"

    .line 99
    invoke-static {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->init(Landroid/app/Activity;Ljava/lang/String;I)Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    .line 100
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->effectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    .line 105
    invoke-virtual {p0, p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->initVideoFilters(Landroid/app/Activity;)V

    .line 106
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoFilterDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    .line 107
    iget-object v3, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getPackageId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/meicam/sdk/NvsRational;

    const/16 v6, 0x9

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createVideoEffect(Ljava/lang/String;Lcom/meicam/sdk/NvsRational;)Lcom/meicam/effect/sdk/NvsVideoEffect;

    move-result-object v3

    .line 109
    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setNvsEffect(Lcom/meicam/effect/sdk/NvsEffect;)V

    goto :goto_0

    .line 112
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 116
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 117
    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoFilterRcl:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 118
    new-instance v0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;

    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoFilterDataList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoFilterAdapter:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;

    .line 119
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoFilterRcl:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoFilterAdapter:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    invoke-direct {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->initNvsLiveWindow()V

    .line 130
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->info:Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;

    if-nez v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 139
    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsLiveWindow;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    new-instance v1, Lcom/zui/gallery/app/-$$Lambda$NormalVideoTrimActivity$fEkPVm0yapgP-Zi7uNMG-rae1ZI;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/-$$Lambda$NormalVideoTrimActivity$fEkPVm0yapgP-Zi7uNMG-rae1ZI;-><init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/meicam/sdk/NvsLiveWindow;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    const-string v0, "VideoEditActivity"

    const-string v1, "mNvsLiveWindow ==null"

    .line 144
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method protected isPlaying()Z
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->getStreamingEngineState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isPlaying:Z

    .line 434
    iget-boolean v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isPlaying:Z

    return v0
.end method

.method public synthetic lambda$initView$0$NormalVideoTrimActivity()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsLiveWindow;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$parseNvsVideoThumbnail$1$NormalVideoTrimActivity(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 12

    .line 367
    invoke-virtual {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06014f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 369
    invoke-virtual {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06033f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 373
    div-int/lit8 v1, p1, 0xa

    .line 374
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 375
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 377
    iget-object v3, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v4, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mSrcVideoPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/meicam/sdk/NvsStreamingContext;->createVideoFrameRetriever(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFrameRetriever;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const/16 v7, 0xa

    if-ge v5, v7, :cond_0

    .line 379
    iget-wide v8, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoDuration:J

    int-to-long v10, v7

    div-long/2addr v8, v10

    int-to-long v10, v5

    mul-long/2addr v8, v10

    .line 380
    invoke-virtual {v3, v8, v9, v4}, Lcom/meicam/sdk/NvsVideoFrameRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x1

    .line 381
    invoke-static {v7, v1, v0, v8}, Lcom/zui/gallery/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    int-to-float v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 383
    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/2addr v6, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public synthetic lambda$parseNvsVideoThumbnail$2$NormalVideoTrimActivity(Lcom/zui/gallery/util/Future;)V
    .locals 0

    .line 387
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->setBottomFrameThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected loadThumbnailFrame()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->extractTask:Lcom/zui/gallery/util/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 322
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 323
    iput-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->extractTask:Lcom/zui/gallery/util/Future;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->filterFramTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_1

    .line 326
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 327
    iput-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->filterFramTask:Lcom/zui/gallery/util/Future;

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->combinePrimaryBitmap()V

    .line 330
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v2, Lcom/zui/gallery/app/NormalVideoTrimActivity$ExtractFrameLoader;

    invoke-direct {v2, p0, v1}, Lcom/zui/gallery/app/NormalVideoTrimActivity$ExtractFrameLoader;-><init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;Lcom/zui/gallery/app/NormalVideoTrimActivity$1;)V

    invoke-virtual {v0, v2}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->extractTask:Lcom/zui/gallery/util/Future;

    .line 331
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v2, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;

    invoke-direct {v2, p0, v1}, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;-><init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;Lcom/zui/gallery/app/NormalVideoTrimActivity$1;)V

    invoke-virtual {v0, v2}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->filterFramTask:Lcom/zui/gallery/util/Future;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    invoke-direct {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->whenRotating()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->extractTask:Lcom/zui/gallery/util/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 231
    iput-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->extractTask:Lcom/zui/gallery/util/Future;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->filterFramTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_1

    .line 234
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 235
    iput-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->filterFramTask:Lcom/zui/gallery/util/Future;

    :cond_1
    const-wide/16 v0, 0xc8

    .line 238
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->clearCachedResources(Z)V

    .line 247
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    .line 249
    :cond_2
    invoke-super {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 5

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 221
    invoke-super {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->onPause()V

    .line 222
    invoke-virtual {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isPlaying()Z

    .line 223
    invoke-virtual {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->pause()V

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlaybackEOF(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 13

    const-wide/16 v0, 0x0

    .line 463
    iput-wide v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->lastSeekPosition:J

    .line 465
    iget-wide v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTrimStartTime:J

    iget-wide v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoDuration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-wide v3, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTrimStartTime:J

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    goto :goto_0

    .line 468
    :cond_0
    iget-object v7, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    .line 471
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->play()V

    return-void
.end method

.method public onPlaybackPreloadingCompletion(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 2

    .line 446
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoDuration:J

    .line 447
    iget-object p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    if-eqz p1, :cond_1

    .line 448
    iget-boolean p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isPlayerReady:Z

    if-nez p1, :cond_0

    .line 449
    iget-object p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    iget-wide v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoDuration:J

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->initDuration(J)V

    const/4 p1, 0x1

    .line 450
    iput-boolean p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isPlayerReady:Z

    .line 452
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    iget-boolean v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isPlayerReady:Z

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->initReady(Z)V

    :cond_1
    return-void
.end method

.method public onPlaybackStopped(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 9

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 206
    invoke-super {p0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->onResume()V

    .line 207
    iget-boolean v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mIsCompiled:Z

    if-nez v2, :cond_0

    .line 208
    iget-object v3, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v4, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    iget-wide v5, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mCurrentPosition:J

    const/4 v7, 0x1

    const/4 v8, 0x2

    invoke-virtual/range {v3 .. v8}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    .line 212
    :cond_0
    iget-boolean v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isPlaying:Z

    if-eqz v2, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->play()V

    .line 215
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " isPlaying "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isPlaying:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSeekEnd()V
    .locals 0

    return-void
.end method

.method public onSeekMove(J)V
    .locals 8

    .line 263
    iput-wide p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->lastSeekPosition:J

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->hasMoved:Z

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seektime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->lastSeekPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iput-wide p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mCurrentPosition:J

    .line 267
    iget-object v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v3, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const/4 v6, 0x1

    const/4 v7, 0x2

    move-wide v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    .line 270
    iget-boolean p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isPlayCoverGone:Z

    if-nez p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/zui/gallery/app/NormalVideoTrimActivity$2;

    invoke-direct {p2, p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity$2;-><init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    .line 277
    iput-boolean p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isPlayCoverGone:Z

    :cond_0
    return-void
.end method

.method public onSeekStart()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 254
    iput-wide v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->lastSeekPosition:J

    .line 255
    invoke-virtual {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->pause()V

    return-void
.end method

.method protected pause()V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    iget-boolean v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mIsCompiled:Z

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isTrimValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isFilterValid()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->enableDoneBtn(Z)V

    .line 422
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->onPause()V

    .line 423
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->updatePlayIcon(Z)V

    return-void
.end method

.method protected play()V
    .locals 12

    .line 397
    invoke-virtual {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isTrimValid()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->isFilterValid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->enableDoneBtn(Z)V

    .line 399
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0, v2}, Lcom/meicam/sdk/NvsStreamingContext;->getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide v5

    .line 400
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v7

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play: mTrimEndTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTrimEndTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "   endTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoEditActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-wide v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTrimEndTime:J

    const-wide/16 v9, 0x0

    cmp-long v0, v2, v9

    if-eqz v0, :cond_2

    .line 403
    iget-object v3, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v4, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    iget-wide v7, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTrimEndTime:J

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/meicam/sdk/NvsStreamingContext;->playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z

    goto :goto_2

    .line 405
    :cond_2
    iget-object v3, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v4, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/meicam/sdk/NvsStreamingContext;->playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z

    .line 409
    :goto_2
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mController:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->onPlay()V

    .line 411
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->updatePlayIcon(Z)V

    return-void
.end method

.method public playVideo(JJ)V
    .locals 9

    .line 391
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/meicam/sdk/NvsStreamingContext;->playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z

    return-void
.end method
