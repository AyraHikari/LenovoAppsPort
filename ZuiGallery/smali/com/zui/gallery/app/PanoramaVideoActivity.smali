.class public Lcom/zui/gallery/app/PanoramaVideoActivity;
.super Landroid/app/Activity;
.source "PanoramaVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;,
        Lcom/zui/gallery/app/PanoramaVideoActivity$ActivityEventListener;
    }
.end annotation


# static fields
.field public static final LOAD_VIDEO_STATUS_ERROR:I = 0x2

.field public static final LOAD_VIDEO_STATUS_SUCCESS:I = 0x1

.field public static final LOAD_VIDEO_STATUS_UNKNOWN:I = 0x0

.field private static final STATE_IS_PAUSED:Ljava/lang/String; = "isPaused"

.field private static final STATE_PROGRESS_TIME:Ljava/lang/String; = "progressTime"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private backgroundVideoLoaderTask:Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;

.field private enable_carboard_mode:Z

.field private fileUri:Landroid/net/Uri;

.field private fullScreenDialog:Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

.field private isPaused:Z

.field private loadVideoStatus:I

.field private mLoadingDialog:Landroid/app/Dialog;

.field private videoOptions:Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;

.field protected videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/zui/gallery/app/PanoramaVideoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/app/PanoramaVideoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->loadVideoStatus:I

    .line 53
    new-instance v1, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoOptions:Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;

    .line 59
    iput-boolean v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->isPaused:Z

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/zui/gallery/app/PanoramaVideoActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zui/gallery/app/PanoramaVideoActivity;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->loadVideoStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/PanoramaVideoActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/zui/gallery/app/PanoramaVideoActivity;->togglePause()V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/PanoramaVideoActivity;Ljava/lang/String;Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/PanoramaVideoActivity;->getSpecificField(Ljava/lang/String;Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/PanoramaVideoActivity;)Landroid/app/Dialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->mLoadingDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private getSpecificField(Ljava/lang/String;Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Ljava/lang/Object;
    .locals 1

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 278
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 280
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 283
    :catch_0
    sget-object p1, Lcom/zui/gallery/app/PanoramaVideoActivity;->TAG:Ljava/lang/String;

    const-string p2, "Error get fullscreenBackButton"

    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 4

    .line 121
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.zui.gallery.PANORAMA_VIDEO_VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 122
    sget-object v0, Lcom/zui/gallery/app/PanoramaVideoActivity;->TAG:Ljava/lang/String;

    const-string v2, "PANORAMA_VIDEO_VIEW Intent received"

    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "inputFile"

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->fileUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/zui/gallery/app/PanoramaVideoActivity;->TAG:Ljava/lang/String;

    const-string v2, "No data uri specified. Use \"-d /path/filename\"."

    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoOptions:Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;

    const-string v2, "inputFormat"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;->inputFormat:I

    .line 130
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoOptions:Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;

    const-string v2, "inputType"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;->inputType:I

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->backgroundVideoLoaderTask:Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;

    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {p1, v1}, Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;->cancel(Z)Z

    .line 137
    :cond_2
    new-instance p1, Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;

    invoke-direct {p1, p0}, Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;-><init>(Lcom/zui/gallery/app/PanoramaVideoActivity;)V

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->backgroundVideoLoaderTask:Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;

    new-array v0, v1, [Landroid/util/Pair;

    const/4 v1, 0x0

    .line 138
    iget-object v2, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->fileUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoOptions:Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private hideFullScreenBackButton()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    const-string v1, "fullscreenBackButton"

    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/app/PanoramaVideoActivity;->getSpecificField(Ljava/lang/String;Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 291
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private togglePause()V
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->isPaused:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->playVideo()V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->pauseVideo()V

    .line 191
    :goto_0
    iget-boolean v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->isPaused:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->isPaused:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b00a5

    .line 70
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PanoramaVideoActivity;->setContentView(I)V

    const p1, 0x7f08027d

    .line 71
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PanoramaVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/VrVideoView;

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    const-string v0, "fullScreenDialog"

    .line 72
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/app/PanoramaVideoActivity;->getSpecificField(Ljava/lang/String;Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->fullScreenDialog:Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    .line 73
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 75
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->setDisplayMode(I)V

    .line 76
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->setInfoButtonEnabled(Z)V

    .line 77
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->setFullscreenButtonEnabled(Z)V

    .line 78
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->setTransitionViewEnabled(Z)V

    .line 79
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->setTouchTrackingEnabled(Z)V

    .line 80
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    new-instance v1, Lcom/zui/gallery/app/PanoramaVideoActivity$ActivityEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zui/gallery/app/PanoramaVideoActivity$ActivityEventListener;-><init>(Lcom/zui/gallery/app/PanoramaVideoActivity;Lcom/zui/gallery/app/PanoramaVideoActivity$1;)V

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->setEventListener(Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;)V

    .line 81
    iput v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->loadVideoStatus:I

    .line 84
    invoke-virtual {p0}, Lcom/zui/gallery/app/PanoramaVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f040003

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->enable_carboard_mode:Z

    .line 85
    sget-object p1, Lcom/zui/gallery/app/PanoramaVideoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "video enable_carboard_mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->enable_carboard_mode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-boolean p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->enable_carboard_mode:Z

    if-nez p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->setStereoModeButtonEnabled(Z)V

    :cond_0
    const p1, 0x7f100198

    .line 91
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PanoramaVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/gallery/util/GalleryUtils;->getProgressDialogX(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->mLoadingDialog:Landroid/app/Dialog;

    .line 92
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 93
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->mLoadingDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/zui/gallery/app/PanoramaVideoActivity$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PanoramaVideoActivity$1;-><init>(Lcom/zui/gallery/app/PanoramaVideoActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/zui/gallery/app/PanoramaVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PanoramaVideoActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->shutdown()V

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 109
    sget-object v0, Lcom/zui/gallery/app/PanoramaVideoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".onNewIntent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PanoramaVideoActivity;->setIntent(Landroid/content/Intent;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PanoramaVideoActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 165
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->pauseRendering()V

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->isPaused:Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "progressTime"

    .line 152
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 153
    iget-object v2, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    invoke-virtual {v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->seekTo(J)V

    const-string v0, "isPaused"

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->isPaused:Z

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->pauseVideo()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 175
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->resumeRendering()V

    .line 176
    invoke-direct {p0}, Lcom/zui/gallery/app/PanoramaVideoActivity;->hideFullScreenBackButton()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->getCurrentPosition()J

    move-result-wide v0

    const-string v2, "progressTime"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 144
    iget-boolean v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity;->isPaused:Z

    const-string v1, "isPaused"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
