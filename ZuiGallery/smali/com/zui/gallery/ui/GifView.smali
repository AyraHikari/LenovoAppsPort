.class public Lcom/zui/gallery/ui/GifView;
.super Landroid/view/View;
.source "GifView.java"


# static fields
.field private static final FILE_MAX_SIZE:I = 0x200000

.field private static final M_GIF_WIDTH:I = 0xbe

.field private static final M_SCALE_RATIO:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "GifView"


# instance fields
.field private mGifh:I

.field private mGifw:I

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieDuration:J

.field private mMovieStart:J

.field private mViewh:I

.field private mVieww:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/zui/gallery/ui/GifView;->mGifw:I

    .line 27
    iput p1, p0, Lcom/zui/gallery/ui/GifView;->mGifh:I

    .line 28
    iput p1, p0, Lcom/zui/gallery/ui/GifView;->mVieww:I

    .line 29
    iput p1, p0, Lcom/zui/gallery/ui/GifView;->mViewh:I

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/zui/gallery/ui/GifView;->mMovie:Landroid/graphics/Movie;

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/zui/gallery/ui/GifView;->mMovieStart:J

    .line 32
    iput-wide v0, p0, Lcom/zui/gallery/ui/GifView;->mMovieDuration:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/zui/gallery/ui/GifView;->mGifw:I

    .line 27
    iput p1, p0, Lcom/zui/gallery/ui/GifView;->mGifh:I

    .line 28
    iput p1, p0, Lcom/zui/gallery/ui/GifView;->mVieww:I

    .line 29
    iput p1, p0, Lcom/zui/gallery/ui/GifView;->mViewh:I

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/zui/gallery/ui/GifView;->mMovie:Landroid/graphics/Movie;

    const-wide/16 p1, 0x0

    .line 31
    iput-wide p1, p0, Lcom/zui/gallery/ui/GifView;->mMovieStart:J

    .line 32
    iput-wide p1, p0, Lcom/zui/gallery/ui/GifView;->mMovieDuration:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/zui/gallery/ui/GifView;->mGifw:I

    .line 27
    iput p1, p0, Lcom/zui/gallery/ui/GifView;->mGifh:I

    .line 28
    iput p1, p0, Lcom/zui/gallery/ui/GifView;->mVieww:I

    .line 29
    iput p1, p0, Lcom/zui/gallery/ui/GifView;->mViewh:I

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/zui/gallery/ui/GifView;->mMovie:Landroid/graphics/Movie;

    const-wide/16 p1, 0x0

    .line 31
    iput-wide p1, p0, Lcom/zui/gallery/ui/GifView;->mMovieStart:J

    .line 32
    iput-wide p1, p0, Lcom/zui/gallery/ui/GifView;->mMovieDuration:J

    return-void
.end method

.method private streamToBytes(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/high16 v1, 0x200000

    new-array v1, v1, [B

    .line 54
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 56
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 59
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "GifView"

    const-string v1, "-onDraw ----"

    .line 179
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v1, p0, Lcom/zui/gallery/ui/GifView;->mMovie:Landroid/graphics/Movie;

    if-nez v1, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 187
    iget-wide v3, p0, Lcom/zui/gallery/ui/GifView;->mMovieStart:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 189
    iput-wide v1, p0, Lcom/zui/gallery/ui/GifView;->mMovieStart:J

    .line 192
    :cond_1
    iget-wide v3, p0, Lcom/zui/gallery/ui/GifView;->mMovieStart:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/zui/gallery/ui/GifView;->mMovieDuration:J

    rem-long/2addr v1, v3

    long-to-int v1, v1

    .line 193
    iget-object v2, p0, Lcom/zui/gallery/ui/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGifw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/gallery/ui/GifView;->mGifw:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGifh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/gallery/ui/GifView;->mGifh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget v1, p0, Lcom/zui/gallery/ui/GifView;->mGifw:I

    const/16 v2, 0xbe

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v1, v2, :cond_2

    .line 205
    iget v2, p0, Lcom/zui/gallery/ui/GifView;->mVieww:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 206
    iget v1, p0, Lcom/zui/gallery/ui/GifView;->mViewh:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v4, p0, Lcom/zui/gallery/ui/GifView;->mGifh:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    goto :goto_0

    :cond_2
    const v2, 0x3f4ccccd    # 0.8f

    .line 211
    iget v4, p0, Lcom/zui/gallery/ui/GifView;->mVieww:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    int-to-float v1, v1

    div-float v1, v4, v1

    .line 212
    iget v4, p0, Lcom/zui/gallery/ui/GifView;->mViewh:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget v2, p0, Lcom/zui/gallery/ui/GifView;->mGifh:I

    int-to-float v2, v2

    div-float v2, v4, v2

    move v7, v2

    move v2, v1

    move v1, v7

    .line 215
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wRate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hRate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v4, v2, v1

    if-ltz v4, :cond_3

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " W >= H scaleRate = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 226
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "W < H scaleRate = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 229
    :goto_1
    iget v2, p0, Lcom/zui/gallery/ui/GifView;->mGifw:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 230
    iget v4, p0, Lcom/zui/gallery/ui/GifView;->mGifh:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    .line 232
    iget v5, p0, Lcom/zui/gallery/ui/GifView;->mVieww:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v5, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v5, v2

    .line 233
    iget v6, p0, Lcom/zui/gallery/ui/GifView;->mViewh:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    sub-float/2addr v6, v4

    div-float/2addr v6, v2

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " leftPt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " topPt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 239
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 240
    iget-object v0, p0, Lcom/zui/gallery/ui/GifView;->mMovie:Landroid/graphics/Movie;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 241
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GifView;->invalidate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 169
    iput p1, p0, Lcom/zui/gallery/ui/GifView;->mVieww:I

    .line 170
    iput p2, p0, Lcom/zui/gallery/ui/GifView;->mViewh:I

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVieww = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/GifView;->mVieww:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GifView"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewh = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/gallery/ui/GifView;->mViewh:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public setUri(Landroid/net/Uri;)Z
    .locals 14

    const-string/jumbo v0, "width"

    const/4 v1, 0x0

    const-string v2, "GifView"

    if-nez p1, :cond_0

    const-string/jumbo p1, "uri is null "

    .line 67
    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GifView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 75
    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    :try_start_1
    const-string v6, "read uri is null "

    .line 77
    invoke-static {v2, v6}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    invoke-static {v5}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v6

    iput-object v6, p0, Lcom/zui/gallery/ui/GifView;->mMovie:Landroid/graphics/Movie;

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    const-string v6, "create gif movie object is null"

    .line 93
    invoke-static {v2, v6}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v6, v1

    :goto_0
    if-eqz v5, :cond_4

    .line 107
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 110
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_2
    move-exception v6

    move-object v5, v3

    :goto_1
    :try_start_3
    const-string v7, "create movie exception "

    .line 99
    invoke-static {v2, v7, v6}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_3

    .line 107
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v5

    .line 110
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    move v6, v1

    .line 115
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/zui/gallery/ui/GifView;->mMovie:Landroid/graphics/Movie;

    if-eqz v5, :cond_c

    .line 117
    invoke-virtual {v5}, Landroid/graphics/Movie;->duration()I

    move-result v5

    int-to-long v7, v5

    iput-wide v7, p0, Lcom/zui/gallery/ui/GifView;->mMovieDuration:J

    .line 118
    iget-object v5, p0, Lcom/zui/gallery/ui/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v5}, Landroid/graphics/Movie;->width()I

    move-result v5

    iput v5, p0, Lcom/zui/gallery/ui/GifView;->mGifw:I

    .line 119
    iget-object v5, p0, Lcom/zui/gallery/ui/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v5}, Landroid/graphics/Movie;->height()I

    move-result v5

    iput v5, p0, Lcom/zui/gallery/ui/GifView;->mGifh:I

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMovieDruation "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/zui/gallery/ui/GifView;->mMovieDuration:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " width "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/zui/gallery/ui/GifView;->mGifw:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " height "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/zui/gallery/ui/GifView;->mGifh:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget v5, p0, Lcom/zui/gallery/ui/GifView;->mGifw:I

    if-nez v5, :cond_a

    iget v5, p0, Lcom/zui/gallery/ui/GifView;->mGifh:I

    if-nez v5, :cond_a

    .line 127
    :try_start_5
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v10

    .line 130
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GifView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, p1

    .line 131
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 132
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 133
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/GifView;->mGifw:I

    .line 134
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/GifView;->mGifh:I

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get gif width "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/ui/GifView;->mGifw:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/ui/GifView;->mGifh:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget p1, p0, Lcom/zui/gallery/ui/GifView;->mGifw:I

    if-nez p1, :cond_5

    iget p1, p0, Lcom/zui/gallery/ui/GifView;->mGifh:I

    if-nez p1, :cond_5

    const-string p1, "get gif width and height from mediaStor is 0"

    .line 137
    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    move v1, v4

    goto :goto_4

    .line 143
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get gif info from mediaStore is null "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    if-eqz v3, :cond_7

    .line 150
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    move v4, v1

    goto :goto_5

    :catch_4
    move-exception p1

    :try_start_6
    const-string v0, "get gif info from mediaStore error "

    .line 147
    invoke-static {v2, v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_8

    .line 150
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    move v4, v6

    goto :goto_5

    :catchall_1
    move-exception p1

    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_9
    throw p1

    :cond_a
    :goto_5
    const-wide/16 v0, 0x0

    .line 157
    iget-wide v2, p0, Lcom/zui/gallery/ui/GifView;->mMovieDuration:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_b

    const-wide/16 v0, 0x3e8

    .line 159
    iput-wide v0, p0, Lcom/zui/gallery/ui/GifView;->mMovieDuration:J

    :cond_b
    move v6, v4

    :cond_c
    return v6

    :catchall_2
    move-exception p1

    move-object v3, v5

    :goto_6
    if-eqz v3, :cond_d

    .line 107
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 113
    :cond_d
    :goto_7
    throw p1
.end method
