.class public Lcom/zui/gallery/app/GifPlayerActivity;
.super Lcom/zui/gallery/app/BaseActivity;
.source "GifPlayerActivity.java"


# static fields
.field public static final M_FILE:Ljava/lang/String; = "From_Camera"

.field public static final M_FROM_CAMERA:Ljava/lang/String; = "From_Camera"

.field private static final TAG:Ljava/lang/String; = "GifView"


# instance fields
.field private imageView:Lpl/droidsonroids/gif/GifImageView;

.field private mAudioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mGifview:Lcom/zui/gallery/ui/GifView;

.field private mUri:Landroid/net/Uri;

.field private mbFromCamera:Z

.field private needBright:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/zui/gallery/app/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mGifview:Lcom/zui/gallery/ui/GifView;

    .line 36
    iput-object v0, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mbFromCamera:Z

    .line 38
    iput-object v0, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 40
    iput-object v0, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mContext:Landroid/content/Context;

    .line 142
    new-instance v0, Lcom/zui/gallery/app/GifPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/GifPlayerActivity$1;-><init>(Lcom/zui/gallery/app/GifPlayerActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mAudioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/GifPlayerActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/zui/gallery/app/GifPlayerActivity;->lossAudioFocus()V

    return-void
.end method

.method private lossAudioFocus()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mAudioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 182
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onBackPressed()V

    .line 183
    invoke-virtual {p0}, Lcom/zui/gallery/app/GifPlayerActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 48
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    iput-object p0, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p0}, Lcom/zui/gallery/app/GifPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "GifView"

    if-eqz p1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v1, Lcom/zui/gallery/app/GalleryActivity;->NEED_SCREEN_BRIGHT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->needBright:Z

    .line 56
    invoke-virtual {p0, v2}, Lcom/zui/gallery/app/GifPlayerActivity;->setEnableBrightness(Z)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mUri:Landroid/net/Uri;

    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "From_Camera"

    .line 61
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mbFromCamera:Z

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mUri:Landroid/net/Uri;

    const v1, 0x7f100162

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const-string p1, "play gif uri is null"

    .line 66
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 69
    invoke-virtual {p0}, Lcom/zui/gallery/app/GifPlayerActivity;->finish()V

    return-void

    .line 73
    :cond_1
    invoke-virtual {p0, v2}, Lcom/zui/gallery/app/GifPlayerActivity;->requestWindowFeature(I)Z

    .line 74
    invoke-virtual {p0}, Lcom/zui/gallery/app/GifPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v3, 0x400

    invoke-virtual {p1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0b0076

    .line 77
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/GifPlayerActivity;->setContentView(I)V

    const p1, 0x7f0801c0

    .line 78
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/GifPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/GifView;

    iput-object p1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mGifview:Lcom/zui/gallery/ui/GifView;

    const p1, 0x7f0801ee

    .line 79
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/GifPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/droidsonroids/gif/GifImageView;

    iput-object p1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->imageView:Lpl/droidsonroids/gif/GifImageView;

    .line 80
    iget-object p1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mGifview:Lcom/zui/gallery/ui/GifView;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/zui/gallery/ui/GifView;->setVisibility(I)V

    .line 81
    iget-boolean p1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mbFromCamera:Z

    if-eqz p1, :cond_3

    const-string p1, "audio"

    .line 82
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/GifPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 84
    iget-object v3, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mAudioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 90
    iget-object p1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mGifview:Lcom/zui/gallery/ui/GifView;

    if-eqz p1, :cond_2

    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Lcom/zui/gallery/ui/GifView;->setUri(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_2
    const-string p1, "mGifview.setUri exception1 "

    .line 91
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 94
    invoke-virtual {p0}, Lcom/zui/gallery/app/GifPlayerActivity;->finish()V

    goto/16 :goto_1

    .line 98
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mGifview:Lcom/zui/gallery/ui/GifView;

    if-nez p1, :cond_4

    const-string p1, "mGifview.setUri exception2 "

    .line 99
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 102
    invoke-virtual {p0}, Lcom/zui/gallery/app/GifPlayerActivity;->finish()V

    goto/16 :goto_1

    .line 104
    :cond_4
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 105
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 107
    invoke-virtual {p0}, Lcom/zui/gallery/app/GifPlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 109
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 110
    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v5, 0x0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/GifPlayerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    :try_start_1
    invoke-static {v6, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 115
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 116
    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 117
    iget v7, p1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    int-to-float v5, v5

    div-float/2addr v7, v5

    .line 118
    iget v8, p1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    int-to-float v4, v4

    div-float/2addr v8, v4

    .line 119
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 120
    iget v8, p1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v5, v7

    sub-float/2addr v8, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v8, v5

    .line 121
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    mul-float/2addr v4, v7

    sub-float/2addr p1, v4

    div-float/2addr p1, v5

    .line 123
    invoke-virtual {v3, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 124
    invoke-virtual {v3, v8, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 125
    iget-object p1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->imageView:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v3}, Lpl/droidsonroids/gif/GifImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUri: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->imageView:Lpl/droidsonroids/gif/GifImageView;

    iget-object v3, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Lpl/droidsonroids/gif/GifImageView;->setImageURI(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-static {v6}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v5, v6

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v5, v6

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 130
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "get gif size  exception "

    .line 131
    invoke-static {v0, v3, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    iget-object p1, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/zui/gallery/app/GifPlayerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 134
    invoke-virtual {p0}, Lcom/zui/gallery/app/GifPlayerActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    invoke-static {v5}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_5
    :goto_1
    return-void

    :goto_2
    invoke-static {v5}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 137
    throw p1
.end method

.method protected onDestroy()V
    .locals 0

    .line 188
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onDestroy()V

    .line 189
    invoke-direct {p0}, Lcom/zui/gallery/app/GifPlayerActivity;->lossAudioFocus()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 164
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 176
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onStop()V

    return-void
.end method
