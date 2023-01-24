.class public Lcom/zui/gallery/app/MovieActivity;
.super Lcom/zui/gallery/app/BaseActivity;
.source "MovieActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field public static final KEY_LOGO_BITMAP:Ljava/lang/String; = "logo-bitmap"

.field public static final KEY_TREAT_UP_AS_BACK:Ljava/lang/String; = "treat-up-as-back"

.field private static final TAG:Ljava/lang/String; = "MovieActivity"


# instance fields
.field private backBut:Landroid/widget/ImageView;

.field private isExitFlag:Z

.field private isHDRVideo:Z

.field private isHDRVideoLand:Z

.field private isToast:Z

.field private mFinishOnCompletion:Z

.field private mPlayer:Lcom/zui/gallery/app/MoviePlayer;

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureCameraCall:Z

.field private mStatusBarHeight:I

.field private mTreatUpAsBack:Z

.field private mUri:Landroid/net/Uri;

.field private needBright:Z

.field private titleTextView:Landroid/widget/TextView;

.field private title_view:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/zui/gallery/app/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->isExitFlag:Z

    .line 93
    iput-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->isHDRVideoLand:Z

    .line 94
    iput-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->isToast:Z

    .line 106
    new-instance v0, Lcom/zui/gallery/app/MovieActivity$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/MovieActivity$1;-><init>(Lcom/zui/gallery/app/MovieActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/MovieActivity;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/zui/gallery/app/MovieActivity;->mFinishOnCompletion:Z

    return p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/MovieActivity;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/zui/gallery/app/MovieActivity;->isHDRVideo:Z

    return p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/MovieActivity;)Landroid/widget/TextView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/zui/gallery/app/MovieActivity;->titleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private createShareIntent()Landroid/content/Intent;
    .locals 3

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "video/*"

    .line 412
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    iget-object v1, p0, Lcom/zui/gallery/app/MovieActivity;->mUri:Landroid/net/Uri;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private initializeActionBar(Landroid/content/Intent;)V
    .locals 9

    .line 304
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mUri:Landroid/net/Uri;

    const-string v0, "android.intent.extra.TITLE"

    .line 334
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 338
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MovieActivity"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 344
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_1
    if-eqz v1, :cond_4

    const-string p1, "file"

    .line 345
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "/"

    .line 347
    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const-string v0, "."

    .line 348
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_5

    if-eq v0, v2, :cond_3

    if-le v0, p1, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 353
    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 355
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 359
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    .line 363
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 367
    :goto_2
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 376
    :cond_4
    new-instance v1, Lcom/zui/gallery/app/MovieActivity$5;

    .line 377
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/app/MovieActivity$5;-><init>(Lcom/zui/gallery/app/MovieActivity;Landroid/content/ContentResolver;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 395
    iget-object v4, p0, Lcom/zui/gallery/app/MovieActivity;->mUri:Landroid/net/Uri;

    const-string p1, "_display_name"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private nationBarControl(Z)Z
    .locals 0

    .line 230
    invoke-static {p0, p1}, Lcom/zui/gallery/util/DisplayPropertyUtils;->setNationBarVisible(Landroid/app/Activity;Z)Z

    move-result p1

    return p1
.end method

.method private reduceRefreshRate()V
    .locals 2

    .line 234
    new-instance v0, Lcom/zui/gallery/app/MovieActivity$4;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/MovieActivity$4;-><init>(Lcom/zui/gallery/app/MovieActivity;)V

    .line 245
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private resetTitleBarMargin()V
    .locals 5

    .line 578
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->title_view:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 579
    new-instance v1, Lcom/zui/gallery/app/-$$Lambda$MovieActivity$kIYtDeE15yefaQ77iq3Ks-wmGTs;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/-$$Lambda$MovieActivity$kIYtDeE15yefaQ77iq3Ks-wmGTs;-><init>(Lcom/zui/gallery/app/MovieActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 586
    :cond_0
    iget v0, p0, Lcom/zui/gallery/app/MovieActivity;->mStatusBarHeight:I

    const/16 v1, 0x78

    if-ge v0, v1, :cond_1

    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->title_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42800000    # 64.0f

    .line 593
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 595
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    const/16 v2, 0x5a

    add-int/2addr v1, v2

    .line 596
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 597
    iget-object v1, p0, Lcom/zui/gallery/app/MovieActivity;->title_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    .line 599
    :cond_2
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 600
    iget-object v1, p0, Lcom/zui/gallery/app/MovieActivity;->title_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 602
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/app/MovieActivity;->title_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->title_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method private setActionBarLogoFromIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "logo-bitmap"

    .line 277
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 280
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 279
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setRefreshRate()V
    .locals 2

    .line 469
    new-instance v0, Lcom/zui/gallery/app/MovieActivity$6;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/MovieActivity$6;-><init>(Lcom/zui/gallery/app/MovieActivity;)V

    .line 475
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setSystemUiVisibility(Landroid/view/View;)V
    .locals 1

    .line 98
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x500

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 418
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->isExitFlag:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mPlayer:Lcom/zui/gallery/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MoviePlayer;->onReplay()V

    goto :goto_1

    .line 419
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->finish()V

    const/4 v0, -0x1

    const v1, 0x10a0001

    .line 420
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/app/MovieActivity;->overridePendingTransition(II)V

    :goto_1
    return-void
.end method

.method public getStatusBarHeight()I
    .locals 4

    .line 249
    iget v0, p0, Lcom/zui/gallery/app/MovieActivity;->mStatusBarHeight:I

    const-string v1, "MovieActivity"

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    .line 251
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    .line 253
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 255
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/MovieActivity;->mStatusBarHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "get statusBarHeight exception "

    .line 257
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "statusBarHeight: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/gallery/app/MovieActivity;->mStatusBarHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget v0, p0, Lcom/zui/gallery/app/MovieActivity;->mStatusBarHeight:I

    return v0
.end method

.method public getVideoRotation(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 4

    .line 607
    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->isHDRVideo:Z

    if-nez v0, :cond_0

    return-void

    .line 609
    :cond_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 610
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p1, 0x18

    .line 611
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x12

    .line 612
    invoke-virtual {v0, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x13

    .line 613
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " width ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " height ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MovieActivity"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "90"

    .line 615
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "270"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-le p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 618
    iput-boolean p1, p0, Lcom/zui/gallery/app/MovieActivity;->isHDRVideoLand:Z

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 616
    iput-boolean p1, p0, Lcom/zui/gallery/app/MovieActivity;->isHDRVideoLand:Z

    .line 622
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void
.end method

.method public synthetic lambda$resetTitleBarMargin$0$MovieActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 580
    iget-object p1, p0, Lcom/zui/gallery/app/MovieActivity;->title_view:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 581
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 582
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->title_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public onAudioFocusChange(I)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mPlayer:Lcom/zui/gallery/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MoviePlayer;->getController()Lcom/zui/gallery/app/MovieControllerOverlay;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zui/gallery/app/MovieControllerOverlay;->isMutil:Z

    .line 553
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->close()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 296
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 297
    invoke-direct {p0}, Lcom/zui/gallery/app/MovieActivity;->resetTitleBarMargin()V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MovieActivity"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->toasForHDR10()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 115
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->mSecureCameraCall:Z

    .line 121
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/zui/gallery/app/GalleryActivity;->NEED_SCREEN_BRIGHT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->needBright:Z

    .line 123
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_hdr_video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->isHDRVideo:Z

    .line 125
    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->needBright:Z

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MovieActivity;->setEnableBrightness(Z)V

    .line 126
    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->mSecureCameraCall:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 129
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x80000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/zui/gallery/app/MovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zui/gallery/app/MovieActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const v0, 0x7f0b0097

    .line 135
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MovieActivity;->setContentView(I)V

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v3, 0x1

    if-lt v0, v1, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0xc000000

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 143
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x700

    invoke-virtual {v1, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 148
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v1, v4, :cond_1

    .line 149
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 150
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    const/high16 v1, -0x80000000

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 157
    :try_start_0
    const-class v1, Landroid/view/Window;

    const-string v4, "setStatusBarColor"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MovieActivity"

    const-string v4, "set statusbar transparent failed"

    .line 160
    invoke-static {v1, v4, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    const v0, 0x7f080250

    .line 164
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f0802a9

    .line 166
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->title_view:Landroid/widget/RelativeLayout;

    const v1, 0x7f0802a8

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->titleTextView:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->title_view:Landroid/widget/RelativeLayout;

    const v1, 0x7f0802a7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->backBut:Landroid/widget/ImageView;

    .line 169
    new-instance v1, Lcom/zui/gallery/app/MovieActivity$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/MovieActivity$2;-><init>(Lcom/zui/gallery/app/MovieActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->getStatusHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/MovieActivity;->mStatusBarHeight:I

    .line 179
    invoke-direct {p0}, Lcom/zui/gallery/app/MovieActivity;->resetTitleBarMargin()V

    .line 181
    invoke-direct {p0, v6}, Lcom/zui/gallery/app/MovieActivity;->setSystemUiVisibility(Landroid/view/View;)V

    .line 183
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/MovieActivity;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    const p1, 0x7f1001c3

    .line 187
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 188
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->close()V

    goto :goto_1

    .line 190
    :cond_3
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/MovieActivity;->initializeActionBar(Landroid/content/Intent;)V

    const-string v1, "android.intent.extra.finishOnCompletion"

    .line 191
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/gallery/app/MovieActivity;->mFinishOnCompletion:Z

    const-string/jumbo v1, "treat-up-as-back"

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/gallery/app/MovieActivity;->mTreatUpAsBack:Z

    .line 194
    new-instance v1, Lcom/zui/gallery/app/MovieActivity$3;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->mFinishOnCompletion:Z

    xor-int/lit8 v10, v0, 0x1

    move-object v4, v1

    move-object v5, p0

    move-object v7, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v10}, Lcom/zui/gallery/app/MovieActivity$3;-><init>(Lcom/zui/gallery/app/MovieActivity;Landroid/view/View;Lcom/zui/gallery/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    iput-object v1, p0, Lcom/zui/gallery/app/MovieActivity;->mPlayer:Lcom/zui/gallery/app/MoviePlayer;

    .line 211
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x80

    .line 213
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    .line 214
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 215
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 216
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object p1, p0, Lcom/zui/gallery/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, p1, p0}, Lcom/zui/gallery/app/MovieActivity;->getVideoRotation(Landroid/net/Uri;Landroid/content/Context;)V

    .line 224
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->toasForHDR10()V

    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 405
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 525
    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->mSecureCameraCall:Z

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MovieActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mPlayer:Lcom/zui/gallery/app/MoviePlayer;

    if-eqz v0, :cond_1

    .line 529
    invoke-virtual {v0}, Lcom/zui/gallery/app/MoviePlayer;->onDestroy()V

    .line 531
    :cond_1
    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->isHDRVideo:Z

    if-eqz v0, :cond_2

    .line 532
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->setRefreshRate(Landroid/content/Context;)V

    .line 534
    :cond_2
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mPlayer:Lcom/zui/gallery/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/MoviePlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/app/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mPlayer:Lcom/zui/gallery/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/MoviePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/app/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 287
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onMultiWindowModeChanged(Z)V

    .line 288
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mPlayer:Lcom/zui/gallery/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MoviePlayer;->getController()Lcom/zui/gallery/app/MovieControllerOverlay;

    move-result-object v0

    sget-object v1, Lcom/zui/gallery/app/CommonControllerOverlay$State;->PLAYING:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    iput-object v1, v0, Lcom/zui/gallery/app/MovieControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    .line 290
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mPlayer:Lcom/zui/gallery/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MoviePlayer;->getController()Lcom/zui/gallery/app/MovieControllerOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/MovieControllerOverlay;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 429
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_1

    .line 431
    iget-boolean p1, p0, Lcom/zui/gallery/app/MovieActivity;->mTreatUpAsBack:Z

    if-eqz p1, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->finish()V

    goto :goto_0

    .line 434
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/zui/gallery/app/GalleryActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MovieActivity;->startActivity(Landroid/content/Intent;)V

    .line 435
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mPlayer:Lcom/zui/gallery/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MoviePlayer;->onPause()V

    .line 483
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mPlayer:Lcom/zui/gallery/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MoviePlayer;->getController()Lcom/zui/gallery/app/MovieControllerOverlay;

    move-result-object v0

    iget-object v0, v0, Lcom/zui/gallery/app/MovieControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/zui/gallery/app/CommonControllerOverlay$State;->PAUSED:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    if-eq v0, v1, :cond_0

    .line 490
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mPlayer:Lcom/zui/gallery/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MoviePlayer;->getController()Lcom/zui/gallery/app/MovieControllerOverlay;

    move-result-object v0

    sget-object v1, Lcom/zui/gallery/app/CommonControllerOverlay$State;->PLAYING:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    iput-object v1, v0, Lcom/zui/gallery/app/MovieControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mPlayer:Lcom/zui/gallery/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MoviePlayer;->getController()Lcom/zui/gallery/app/MovieControllerOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->showMainView()V

    .line 507
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mPlayer:Lcom/zui/gallery/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MoviePlayer;->onResume()V

    const/4 v0, 0x0

    .line 509
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MovieActivity;->setDarkStatusIcon(Z)V

    .line 511
    invoke-direct {p0}, Lcom/zui/gallery/app/MovieActivity;->reduceRefreshRate()V

    .line 512
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onResume()V

    .line 513
    iput-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->isExitFlag:Z

    const/4 v0, 0x1

    .line 514
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/MovieActivity;->nationBarControl(Z)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 519
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 520
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity;->mPlayer:Lcom/zui/gallery/app/MoviePlayer;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/MoviePlayer;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    const-string v0, "audio"

    .line 444
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 445
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 447
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const/4 v0, 0x1

    .line 457
    iput-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->isExitFlag:Z

    const-string v0, "audio"

    .line 458
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    .line 459
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 461
    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->isHDRVideo:Z

    if-eqz v0, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/zui/gallery/app/MovieActivity;->setRefreshRate()V

    :cond_0
    const/4 v0, 0x0

    .line 464
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/MovieActivity;->nationBarControl(Z)Z

    .line 465
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onStop()V

    return-void
.end method

.method public setDarkStatusIcon(Z)V
    .locals 2

    .line 265
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    or-int/lit16 p1, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, -0x2001

    .line 273
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public toasForHDR10()V
    .locals 4

    .line 627
    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->isHDRVideo:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->isToast:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 628
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->isHDRVideoLand:Z

    const v1, 0x7f1001ce

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    .line 629
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 630
    iput-boolean v2, p0, Lcom/zui/gallery/app/MovieActivity;->isToast:Z

    goto :goto_0

    .line 631
    :cond_1
    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieActivity;->isHDRVideoLand:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 632
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 633
    iput-boolean v2, p0, Lcom/zui/gallery/app/MovieActivity;->isToast:Z

    .line 635
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHDRVideoLand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/gallery/app/MovieActivity;->isHDRVideoLand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MovieActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
