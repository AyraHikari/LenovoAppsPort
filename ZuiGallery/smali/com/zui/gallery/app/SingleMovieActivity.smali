.class public Lcom/zui/gallery/app/SingleMovieActivity;
.super Landroid/app/Activity;
.source "SingleMovieActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleMovieActivity"


# instance fields
.field private backBut:Landroid/widget/ImageView;

.field private mFinishOnCompletion:Z

.field private mPlayer:Lcom/zui/gallery/app/SingleMoviePlayer;

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureCameraCall:Z

.field private mUri:Landroid/net/Uri;

.field private titleTextView:Landroid/widget/TextView;

.field private title_view:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Lcom/zui/gallery/app/SingleMovieActivity$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/SingleMovieActivity$1;-><init>(Lcom/zui/gallery/app/SingleMovieActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/SingleMovieActivity;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mFinishOnCompletion:Z

    return p0
.end method

.method private createShareIntent()Landroid/content/Intent;
    .locals 3

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "video/*"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mUri:Landroid/net/Uri;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method close()V
    .locals 2

    .line 222
    invoke-virtual {p0}, Lcom/zui/gallery/app/SingleMovieActivity;->finish()V

    const/4 v0, -0x1

    const v1, 0x10a0001

    .line 223
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/app/SingleMovieActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 218
    invoke-virtual {p0}, Lcom/zui/gallery/app/SingleMovieActivity;->close()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/zui/gallery/app/SingleMovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mSecureCameraCall:Z

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate is secureCameraCall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mSecureCameraCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleMovieActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-boolean v0, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mSecureCameraCall:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/zui/gallery/app/SingleMovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 82
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 83
    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/zui/gallery/app/SingleMovieActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const v0, 0x7f0b0097

    .line 88
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/SingleMovieActivity;->setContentView(I)V

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x1

    if-lt v0, v3, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/zui/gallery/app/SingleMovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v3, 0x4000000

    .line 91
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 93
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x500

    invoke-virtual {v3, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v3, -0x80000000

    .line 97
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 101
    :try_start_0
    const-class v3, Landroid/view/Window;

    const-string v5, "setStatusBarColor"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "set statusbar transparent failed"

    .line 104
    invoke-static {v1, v3, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const v0, 0x7f080250

    .line 108
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/SingleMovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 117
    invoke-virtual {p0}, Lcom/zui/gallery/app/SingleMovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    const p1, 0x7f1001c3

    .line 121
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 122
    invoke-virtual {p0}, Lcom/zui/gallery/app/SingleMovieActivity;->close()V

    goto :goto_1

    :cond_2
    const-string v1, "android.intent.extra.finishOnCompletion"

    .line 124
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mFinishOnCompletion:Z

    .line 126
    new-instance v1, Lcom/zui/gallery/app/SingleMovieActivity$2;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    iget-boolean v0, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mFinishOnCompletion:Z

    xor-int/lit8 v11, v0, 0x1

    move-object v5, v1

    move-object v6, p0

    move-object v8, p0

    move-object v10, p1

    invoke-direct/range {v5 .. v11}, Lcom/zui/gallery/app/SingleMovieActivity$2;-><init>(Lcom/zui/gallery/app/SingleMovieActivity;Landroid/view/View;Lcom/zui/gallery/app/SingleMovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    iput-object v1, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mPlayer:Lcom/zui/gallery/app/SingleMoviePlayer;

    .line 136
    invoke-virtual {p0}, Lcom/zui/gallery/app/SingleMovieActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 138
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 139
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mSecureCameraCall:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/SingleMovieActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mPlayer:Lcom/zui/gallery/app/SingleMoviePlayer;

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Lcom/zui/gallery/app/SingleMoviePlayer;->onDestroy()V

    .line 202
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mPlayer:Lcom/zui/gallery/app/SingleMoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/SingleMoviePlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

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

    .line 213
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mPlayer:Lcom/zui/gallery/app/SingleMoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/SingleMoviePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

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

.method public onPause()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mPlayer:Lcom/zui/gallery/app/SingleMoviePlayer;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/zui/gallery/app/SingleMoviePlayer;->onPause()V

    .line 175
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mPlayer:Lcom/zui/gallery/app/SingleMoviePlayer;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/zui/gallery/app/SingleMoviePlayer;->onResume()V

    .line 183
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMovieActivity;->mPlayer:Lcom/zui/gallery/app/SingleMoviePlayer;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/SingleMoviePlayer;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    const-string v0, "audio"

    .line 157
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/SingleMovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 158
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "audio"

    .line 165
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/SingleMovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    .line 166
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
