.class public Lcom/zui/gallery/app/PanoramaPhotoActivity;
.super Landroid/app/Activity;
.source "PanoramaPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;,
        Lcom/zui/gallery/app/PanoramaPhotoActivity$MyOrientationEventListener;,
        Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;,
        Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;,
        Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;,
        Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;
    }
.end annotation


# static fields
.field public static final MIN_RATION:I = 0x4

.field public static final MIN_SIDE_LENGHT:I = 0xfa0

.field private static final ORIENTATION_HYSTERESIS:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ANIM_DURATION:I

.field private final ROTATION:I

.field private backgroundImageLoaderTask:Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private enable_carboard_mode:Z

.field private fileUri:Landroid/net/Uri;

.field private fullScreenDialog:Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

.field private inAnim:Landroid/animation/ValueAnimator;

.field private inHolder:Landroid/animation/PropertyValuesHolder;

.field public loadImageSuccessful:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mLastDeviceOrientation:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

.field private mOrientationEventListener:Lcom/zui/gallery/app/PanoramaPhotoActivity$MyOrientationEventListener;

.field private mRotationBottomBar:Landroid/widget/LinearLayout;

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureCameraCall:Z

.field private myHander:Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

.field private outAnim:Landroid/animation/ValueAnimator;

.field private outHolder:Landroid/animation/PropertyValuesHolder;

.field private panoOptions:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

.field private panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

.field private rotateBnt:Lcom/zui/gallery/ui/RotateImageButton;

.field private rotationFlag:Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

.field private volatile showRotationBar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const-class v0, Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    new-instance v0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoOptions:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

    const/16 v0, 0x5a

    .line 105
    iput v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->ROTATION:I

    const/16 v0, 0x190

    .line 114
    iput v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->ANIM_DURATION:I

    .line 115
    sget-object v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_0:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    iput-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mLastDeviceOrientation:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    .line 124
    new-instance v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity$1;-><init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 459
    new-instance v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$4;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity$4;-><init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/PanoramaPhotoActivity;ZZ)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->showBottomBar(ZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zui/gallery/app/PanoramaPhotoActivity;Landroid/content/Intent;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/google/vr/sdk/widgets/common/FullScreenDialog;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->fullScreenDialog:Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mRotationBottomBar:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/zui/gallery/app/PanoramaPhotoActivity;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->enableRoationButton(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mLastDeviceOrientation:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/zui/gallery/app/PanoramaPhotoActivity;Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;)Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mLastDeviceOrientation:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;I)Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;
    .locals 0

    .line 87
    invoke-static {p0, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->roundOrientation(Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;I)Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/ui/RotateImageButton;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->rotateBnt:Lcom/zui/gallery/ui/RotateImageButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->myHander:Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->rotationFlag:Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    return-object p0
.end method

.method static synthetic access$302(Lcom/zui/gallery/app/PanoramaPhotoActivity;Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;)Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->rotationFlag:Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->showRotationBar:Z

    return p0
.end method

.method static synthetic access$402(Lcom/zui/gallery/app/PanoramaPhotoActivity;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->showRotationBar:Z

    return p1
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->enable_carboard_mode:Z

    return p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/app/PanoramaPhotoActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->hideFullScreenBackButton()V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$902(Lcom/zui/gallery/app/PanoramaPhotoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private disableCancelable()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    const-string v1, "fullScreenDialog"

    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->getSpecificField(Ljava/lang/String;Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 545
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method private dismissFullScreenDialog()V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->fullScreenDialog:Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private enableRoationButton(Z)V
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->rotateBnt:Lcom/zui/gallery/ui/RotateImageButton;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/RotateImageButton;->setEnabled(Z)V

    return-void
.end method

.method private getSpecificField(Ljava/lang/String;Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Ljava/lang/Object;
    .locals 1

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 570
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 571
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 572
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 575
    :catch_0
    sget-object p1, Lcom/zui/gallery/app/PanoramaPhotoActivity;->TAG:Ljava/lang/String;

    const-string p2, "Error get fullscreenBackButton"

    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 4

    .line 301
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.zui.gallery.PANORAMA_PHOTO_VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 302
    sget-object v0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->TAG:Ljava/lang/String;

    const-string v2, "panorama vr view intent received"

    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "inputFile"

    .line 303
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->fileUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 305
    sget-object v0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->TAG:Ljava/lang/String;

    const-string v2, "No data uri specified. A black screen would show"

    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoOptions:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

    const-string v2, "inputType"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;->inputType:I

    .line 312
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->backgroundImageLoaderTask:Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;

    if-eqz p1, :cond_2

    .line 314
    invoke-virtual {p1, v1}, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->cancel(Z)Z

    .line 317
    :cond_2
    new-instance p1, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoOptions:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

    const/4 v0, 0x3

    .line 318
    iput v0, p1, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;->inputType:I

    const/4 p1, 0x0

    .line 320
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->enableRoationButton(Z)V

    .line 321
    new-instance v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;-><init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->backgroundImageLoaderTask:Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;

    new-array v1, v1, [Landroid/util/Pair;

    .line 322
    iget-object v2, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->fileUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoOptions:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private hideFullScreenBackButton()V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    const-string v1, "fullscreenBackButton"

    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->getSpecificField(Ljava/lang/String;Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 531
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isBottomBarShow()Z
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mRotationBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static roundOrientation(Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;I)Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;
    .locals 2

    .line 650
    invoke-virtual {p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->getDegrees()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rsub-int v1, v0, 0x168

    .line 651
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    add-int/lit8 p1, p1, 0x2d

    const/16 v0, 0x5a

    .line 655
    div-int/2addr p1, v0

    mul-int/2addr p1, v0

    rem-int/lit16 p1, p1, 0x168

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 664
    :cond_1
    sget-object p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_270:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-object p0

    .line 662
    :cond_2
    sget-object p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_180:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-object p0

    .line 660
    :cond_3
    sget-object p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_90:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    return-object p0

    .line 658
    :cond_4
    sget-object p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->CLOCKWISE_0:Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    :cond_5
    :goto_1
    return-object p0
.end method

.method private showBottomBar(ZZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    .line 587
    iget-object p2, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mRotationBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p2

    cmpg-float v3, p2, p1

    if-gez v3, :cond_0

    .line 588
    iget-object v3, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->inAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 589
    iget-object v3, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->outAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 590
    iget-object v3, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->inHolder:Landroid/animation/PropertyValuesHolder;

    new-array v2, v2, [F

    aput p2, v2, v0

    aput p1, v2, v1

    invoke-virtual {v3, v2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 591
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->inAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 593
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->myHander:Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;->removeMessages(I)V

    .line 594
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->myHander:Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;->removeMessages(I)V

    .line 595
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->myHander:Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 599
    :cond_1
    iget-object p2, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mRotationBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 603
    iget-object p2, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mRotationBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p2

    cmpl-float v3, p2, p1

    if-lez v3, :cond_4

    .line 604
    iget-object v3, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->outAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_4

    .line 605
    iget-object v3, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->outHolder:Landroid/animation/PropertyValuesHolder;

    new-array v2, v2, [F

    aput p2, v2, v0

    aput p1, v2, v1

    invoke-virtual {v3, v2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 606
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->outAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 610
    :cond_3
    iget-object p2, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mRotationBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 342
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 343
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->resumeRendering()V

    .line 344
    invoke-direct {p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->hideFullScreenBackButton()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :catch_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mSecureCameraCall:Z

    const/high16 v0, 0x280000

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 169
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 171
    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 172
    new-instance p1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const p1, 0x7f0b00a4

    .line 176
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->setContentView(I)V

    const p1, 0x7f08027c

    .line 178
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    const-string v2, "fullScreenDialog"

    .line 179
    invoke-direct {p0, v2, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->getSpecificField(Ljava/lang/String;Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->fullScreenDialog:Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    .line 181
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->setDisplayMode(I)V

    .line 182
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->setStereoModeButtonEnabled(Z)V

    .line 183
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->setInfoButtonEnabled(Z)V

    .line 184
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->setFullscreenButtonEnabled(Z)V

    .line 185
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->setTransitionViewEnabled(Z)V

    .line 186
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->setTouchTrackingEnabled(Z)V

    .line 187
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    new-instance v4, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;-><init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;Lcom/zui/gallery/app/PanoramaPhotoActivity$1;)V

    invoke-virtual {p1, v4}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->setEventListener(Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;)V

    .line 189
    sget-object p1, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;->left:Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->rotationFlag:Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    .line 191
    iget-boolean p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mSecureCameraCall:Z

    if-eqz p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->fullScreenDialog:Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b00a3

    invoke-virtual {p1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mRotationBottomBar:Landroid/widget/LinearLayout;

    const v0, 0x7f08027a

    .line 197
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/RotateImageButton;

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->rotateBnt:Lcom/zui/gallery/ui/RotateImageButton;

    .line 198
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mRotationBottomBar:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance p1, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyOrientationEventListener;

    invoke-direct {p1, p0, p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyOrientationEventListener;-><init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mOrientationEventListener:Lcom/zui/gallery/app/PanoramaPhotoActivity$MyOrientationEventListener;

    .line 224
    new-instance p1, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

    invoke-direct {p1, p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;-><init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;)V

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->myHander:Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

    .line 225
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mRotationBottomBar:Landroid/widget/LinearLayout;

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    const-string v4, "alpha"

    invoke-static {p1, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->inAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x190

    .line 226
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 227
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mRotationBottomBar:Landroid/widget/LinearLayout;

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-static {p1, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->outAnim:Landroid/animation/ValueAnimator;

    .line 228
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, v2, [F

    .line 229
    fill-array-data p1, :array_2

    invoke-static {v4, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->inHolder:Landroid/animation/PropertyValuesHolder;

    new-array p1, v2, [F

    .line 230
    fill-array-data p1, :array_3

    invoke-static {v4, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->outHolder:Landroid/animation/PropertyValuesHolder;

    .line 231
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->inAnim:Landroid/animation/ValueAnimator;

    new-array v0, v3, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->inHolder:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 232
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->outAnim:Landroid/animation/ValueAnimator;

    new-array v0, v3, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->outHolder:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 233
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->outAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity$2;-><init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->inAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$3;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity$3;-><init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 280
    invoke-virtual {p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f040003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->enable_carboard_mode:Z

    .line 281
    sget-object p1, Lcom/zui/gallery/app/PanoramaPhotoActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable_carboard_mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->enable_carboard_mode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->handleIntent(Landroid/content/Intent;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected onDestroy()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->shutdown()V

    .line 354
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->backgroundImageLoaderTask:Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 355
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->cancel(Z)Z

    .line 357
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mSecureCameraCall:Z

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 363
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 289
    sget-object v0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->TAG:Ljava/lang/String;

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

    .line 292
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->setIntent(Landroid/content/Intent;)V

    .line 294
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->pauseRendering()V

    .line 328
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mOrientationEventListener:Lcom/zui/gallery/app/PanoramaPhotoActivity$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyOrientationEventListener;->disable()V

    .line 329
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 334
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 335
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->panoWidgetView:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->resumeRendering()V

    .line 336
    invoke-direct {p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->hideFullScreenBackButton()V

    .line 337
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->mOrientationEventListener:Lcom/zui/gallery/app/PanoramaPhotoActivity$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyOrientationEventListener;->enable()V

    return-void
.end method
