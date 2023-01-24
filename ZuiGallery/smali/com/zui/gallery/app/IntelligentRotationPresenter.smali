.class public Lcom/zui/gallery/app/IntelligentRotationPresenter;
.super Ljava/lang/Object;
.source "IntelligentRotationPresenter.java"

# interfaces
.implements Lcom/zui/gallery/ui/OrientationSource;


# static fields
.field private static final AUTO_ROATE_OFF:I = 0x0

.field private static final AUTO_ROATE_ON:I = 0x1

.field private static final KEY_HAS_SHOWED_TIPS:Ljava/lang/String; = "intelligent_rotation_showed_tips"

.field private static final REQUSET_HIDE_TIPS_TOAST:I = 0x1

.field private static autoRotateValue:I = 0x0

.field private static mOrientationListener:Landroid/view/OrientationEventListener; = null

.field static switchOn:Z = false


# instance fields
.field private canShowIcon:Z

.field currentOrientation:I

.field handler:Landroid/os/Handler;

.field private isBarShowing:Z

.field private isMicroImage:Z

.field private keepShowingIcon:Z

.field lastOrientation:I

.field lastUpdateOrientation:J

.field mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field rotatedImage:Lcom/zui/gallery/selfwidget/RotateImageView;

.field rotationFlag:I

.field screenOrientation:I

.field private shouldShowTipsToast:Z

.field targetOritentation:I

.field tipsToast:Landroid/widget/ImageView;

.field titlebarLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->lastOrientation:I

    .line 43
    iput v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->currentOrientation:I

    const-wide/16 v1, 0x0

    .line 44
    iput-wide v1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->lastUpdateOrientation:J

    .line 45
    iput v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotationFlag:I

    const/4 v1, 0x1

    .line 48
    iput v1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->screenOrientation:I

    .line 55
    iput-boolean v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->canShowIcon:Z

    .line 56
    iput-boolean v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->keepShowingIcon:Z

    .line 60
    iput-boolean v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->shouldShowTipsToast:Z

    .line 61
    iput-boolean v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->isMicroImage:Z

    .line 365
    new-instance v2, Lcom/zui/gallery/app/IntelligentRotationPresenter$3;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/IntelligentRotationPresenter$3;-><init>(Lcom/zui/gallery/app/IntelligentRotationPresenter;)V

    iput-object v2, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->handler:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f0802d0

    .line 65
    invoke-virtual {p1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/selfwidget/RotateImageView;

    iput-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotatedImage:Lcom/zui/gallery/selfwidget/RotateImageView;

    .line 66
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f0801a2

    invoke-virtual {p1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->tipsToast:Landroid/widget/ImageView;

    .line 67
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f08036b

    invoke-virtual {p1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->titlebarLayout:Landroid/widget/RelativeLayout;

    .line 68
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "intelligent_rotation_showed_tips"

    .line 69
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    iput-boolean v1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->shouldShowTipsToast:Z

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->initialRotatedImage()V

    .line 73
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotatedImage:Lcom/zui/gallery/selfwidget/RotateImageView;

    new-instance v0, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;-><init>(Lcom/zui/gallery/app/IntelligentRotationPresenter;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/selfwidget/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance p1, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;

    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1}, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;-><init>(Lcom/zui/gallery/app/IntelligentRotationPresenter;Landroid/content/Context;I)V

    sput-object p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/IntelligentRotationPresenter;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->initialRotatedImage()V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/IntelligentRotationPresenter;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->canShowIcon:Z

    return p0
.end method

.method static synthetic access$102(Lcom/zui/gallery/app/IntelligentRotationPresenter;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->canShowIcon:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/IntelligentRotationPresenter;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->setCurrentDisplayOrientation(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/IntelligentRotationPresenter;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->shouldShowTipsToast:Z

    return p0
.end method

.method static synthetic access$302(Lcom/zui/gallery/app/IntelligentRotationPresenter;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->shouldShowTipsToast:Z

    return p1
.end method

.method static synthetic access$400()I
    .locals 1

    .line 36
    sget v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->autoRotateValue:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0

    .line 36
    sput p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->autoRotateValue:I

    return p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/IntelligentRotationPresenter;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->keepShowingIcon:Z

    return p0
.end method

.method static synthetic access$502(Lcom/zui/gallery/app/IntelligentRotationPresenter;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->keepShowingIcon:Z

    return p1
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/IntelligentRotationPresenter;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->isBarShowing:Z

    return p0
.end method

.method private initialRotatedImage()V
    .locals 3

    .line 248
    sget-boolean v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->switchOn:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotatedImage:Lcom/zui/gallery/selfwidget/RotateImageView;

    iget-object v1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070324

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/selfwidget/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 250
    invoke-virtual {p0}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rePositionMarkIcon()V

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotatedImage:Lcom/zui/gallery/selfwidget/RotateImageView;

    iget-object v1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070323

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/selfwidget/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 253
    invoke-virtual {p0}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rePositionMarkIcon()V

    :goto_0
    return-void
.end method

.method private setCurrentDisplayOrientation(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 232
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public disableIntelligentRotation()V
    .locals 2

    .line 277
    sget-object v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    const-string v0, "IntelligentRotationPresenter"

    const-string v1, "rotatedImage.setVisibilitysb4"

    .line 279
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotatedImage:Lcom/zui/gallery/selfwidget/RotateImageView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 281
    invoke-virtual {v0, v1}, Lcom/zui/gallery/selfwidget/RotateImageView;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->canShowIcon:Z

    .line 283
    sput-boolean v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->switchOn:Z

    .line 284
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 285
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->initialRotatedImage()V

    return-void
.end method

.method public enableIntelligentRotation()V
    .locals 2

    .line 267
    sget-object v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IntelligentRotationPresenter"

    const-string v1, "Can detect orientation"

    .line 268
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    const-string v0, "MainActivity"

    const-string v1, "rotatedImage.setVisibilitysb3"

    .line 270
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->canShowIcon:Z

    :cond_0
    return-void
.end method

.method public enableIntelligentRotation(Z)V
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->isMicroImage:Z

    .line 263
    invoke-virtual {p0}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rePositionMarkIcon()V

    .line 264
    invoke-virtual {p0}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->enableIntelligentRotation()V

    return-void
.end method

.method public getCompensation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayRotation()I
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    if-eqz v0, :cond_3

    .line 292
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    return v0

    :cond_1
    const/16 v0, 0xb4

    return v0

    :cond_2
    const/16 v0, 0x5a

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideTipsToast()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->tipsToast:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public infromBarsState(Z)V
    .locals 0

    .line 392
    iput-boolean p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->isBarShowing:Z

    return-void
.end method

.method public rePositionMarkIcon()V
    .locals 9

    .line 314
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotatedImage:Lcom/zui/gallery/selfwidget/RotateImageView;

    invoke-virtual {v0}, Lcom/zui/gallery/selfwidget/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 315
    iget-object v1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->titlebarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 316
    iget-object v2, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->tipsToast:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 317
    iget-object v3, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isCameraCall()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 318
    iget-object v3, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/high16 v6, 0x42700000    # 60.0f

    const/high16 v7, 0x42880000    # 68.0f

    if-eq v3, v4, :cond_2

    .line 320
    iget-object v3, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v5, v5, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 321
    iget-object v3, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iget-object v8, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v8

    add-int/2addr v3, v8

    .line 322
    iget-boolean v8, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->isMicroImage:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    goto :goto_0

    :cond_0
    move v8, v5

    :goto_0
    add-int/2addr v3, v8

    .line 321
    invoke-virtual {v0, v5, v5, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 323
    iget-object v3, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iget-object v7, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v7

    add-int/2addr v3, v7

    .line 324
    iget-boolean v7, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->isMicroImage:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v4, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    add-int/2addr v3, v6

    .line 323
    invoke-virtual {v2, v5, v5, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_9

    .line 327
    :cond_2
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 328
    iget-object v3, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 329
    iget-boolean v8, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->isMicroImage:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    goto :goto_2

    :cond_3
    move v8, v5

    :goto_2
    add-int/2addr v3, v8

    .line 328
    invoke-virtual {v0, v5, v5, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 330
    iget-object v3, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 331
    iget-boolean v7, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->isMicroImage:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v4, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    goto :goto_3

    :cond_4
    move v6, v5

    :goto_3
    add-int/2addr v3, v6

    .line 330
    invoke-virtual {v2, v5, v5, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_9

    .line 334
    :cond_5
    iget-object v3, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isNavigationShowing(Landroid/content/Context;)Z

    move-result v3

    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v7, 0x42000000    # 32.0f

    if-eqz v3, :cond_a

    .line 335
    iget-object v3, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_7

    .line 336
    iget-object v2, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x41c00000    # 24.0f

    iget-object v6, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v4, v3, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 337
    iget-boolean v3, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->isMicroImage:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    goto :goto_4

    :cond_6
    move v3, v5

    :goto_4
    add-int/2addr v2, v3

    .line 336
    invoke-virtual {v0, v5, v5, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_9

    .line 340
    :cond_7
    iget-object v3, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 341
    iget-boolean v8, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->isMicroImage:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v4, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    goto :goto_5

    :cond_8
    move v8, v5

    :goto_5
    add-int/2addr v3, v8

    .line 340
    invoke-virtual {v0, v5, v5, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 342
    iget-object v3, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 343
    iget-boolean v6, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->isMicroImage:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v4, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    goto :goto_6

    :cond_9
    move v6, v5

    :goto_6
    add-int/2addr v3, v6

    .line 342
    invoke-virtual {v2, v5, v5, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_9

    .line 346
    :cond_a
    iget-object v3, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 347
    iget-boolean v8, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->isMicroImage:Z

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v4, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    goto :goto_7

    :cond_b
    move v8, v5

    :goto_7
    add-int/2addr v3, v8

    .line 346
    invoke-virtual {v0, v5, v5, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 348
    iget-object v3, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 349
    iget-boolean v6, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->isMicroImage:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v4, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    goto :goto_8

    :cond_c
    move v6, v5

    :goto_8
    add-int/2addr v3, v6

    .line 348
    invoke-virtual {v2, v5, v5, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 353
    :goto_9
    iget-object v2, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotatedImage:Lcom/zui/gallery/selfwidget/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/selfwidget/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotatedImage:Lcom/zui/gallery/selfwidget/RotateImageView;

    invoke-virtual {v0}, Lcom/zui/gallery/selfwidget/RotateImageView;->requestLayout()V

    .line 355
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->titlebarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->titlebarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 358
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v4, :cond_d

    .line 360
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_d
    return-void
.end method

.method public release()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->tipsToast:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->tipsToast:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    :cond_0
    sget-object v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_1
    return-void
.end method

.method public setMicroImageMark(Z)V
    .locals 0

    .line 258
    iput-boolean p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->isMicroImage:Z

    .line 259
    invoke-virtual {p0}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rePositionMarkIcon()V

    return-void
.end method
