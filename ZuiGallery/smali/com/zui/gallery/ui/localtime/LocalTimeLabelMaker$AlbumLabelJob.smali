.class Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;
.super Ljava/lang/Object;
.source "LocalTimeLabelMaker.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumLabelJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "[",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCount:Ljava/lang/String;

.field private final mDuration:I

.field private mModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

.field private final mSourceType:I

.field private mTimeEntry:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;IILcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mDuration:I

    const/4 p1, 0x0

    .line 216
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 217
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    .line 218
    iput p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mSourceType:I

    .line 219
    iput-object p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    .line 220
    iput-object p5, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mTimeEntry:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;Ljava/lang/String;Ljava/lang/String;ILcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 207
    iput-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    const/4 p1, 0x0

    .line 208
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mDuration:I

    .line 209
    iput p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mSourceType:I

    .line 210
    iput-object p5, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    .line 211
    iput-object p6, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mTimeEntry:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    return-void
.end method

.method private drawContinuousLabel(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 9

    .line 231
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    move-result-object v0

    .line 235
    iget-object v5, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    const/4 v4, 0x0

    .line 243
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v2}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$200(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v2}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$300(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;

    move-result-object v2

    :goto_0
    move-object v7, v2

    .line 244
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v6, v2

    add-int/lit8 v2, v6, 0x0

    .line 247
    invoke-virtual {v7}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 248
    iget v8, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v8, v3

    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v3

    invoke-virtual {v3, v2, v8}, Lcom/zui/gallery/util/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 252
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x0

    add-int/lit8 v8, v8, 0x0

    .line 256
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v8, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_2
    move-object v8, v3

    .line 260
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 261
    iget v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->continuousBackgroundColor:I

    .line 262
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 265
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v1

    :cond_3
    const/4 v3, 0x0

    .line 266
    invoke-static/range {v2 .. v7}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    return-object v8

    :catchall_0
    move-exception p1

    .line 252
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private drawDuration(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 10

    .line 434
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$000(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mDuration:I

    invoke-static {v1, v2}, Lcom/zui/gallery/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 436
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$1100(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$1200(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;

    move-result-object v1

    :goto_0
    move-object v8, v1

    const/4 v4, 0x0

    .line 439
    invoke-virtual {v8, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v7, v1

    add-int/lit8 v1, v7, 0x4b

    .line 442
    invoke-virtual {v8}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 443
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0x33

    .line 446
    monitor-enter p0

    .line 447
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/zui/gallery/util/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 449
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v3, v2, 0x0

    .line 453
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_1
    move-object v1, v3

    .line 456
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 457
    iget v5, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->continuousBackgroundColor:I

    .line 458
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v5, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 461
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 463
    :cond_2
    iget p1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->durationFontSizeDay:I

    sub-int/2addr v2, p1

    div-int/lit8 v5, v2, 0x2

    .line 464
    invoke-static/range {v3 .. v8}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    return-object v1

    :catchall_0
    move-exception p1

    .line 449
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private drawLabelLocation(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v1, p0

    .line 329
    iget-object v0, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    .line 330
    iget-object v0, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 332
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 333
    aget-object v3, v0, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    aget-object v3, v0, v4

    if-eqz v3, :cond_5

    const-string v3, "null"

    aget-object v5, v0, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 334
    iget-object v3, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    aget-object v0, v0, v4

    iget-object v5, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mTimeEntry:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    invoke-static {v3, v0, v5}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$700(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;Ljava/lang/String;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)Ljava/lang/String;

    move-result-object v9

    .line 342
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v9, :cond_5

    const-string v0, "confirm"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "waiting"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 353
    :cond_0
    iget-object v0, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$800(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;

    move-result-object v0

    iget-object v3, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 354
    iget-object v0, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$800(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    add-int/lit8 v3, v0, 0x0

    .line 357
    iget-object v5, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v5}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$800(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 359
    iget-object v6, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v6}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$000(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v6

    .line 360
    iget v7, v5, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    const/16 v6, 0xa

    :goto_0
    add-int/2addr v5, v6

    .line 362
    monitor-enter p0

    .line 363
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lcom/zui/gallery/util/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 364
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    add-int/lit8 v6, v5, 0x0

    .line 368
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_2
    move-object v12, v6

    .line 372
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 373
    iget-object v8, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v8}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    move-result-object v8

    iget v8, v8, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->backgroundColor:I

    .line 374
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v8, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 376
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_3

    return-object v2

    :cond_3
    const/4 v8, 0x0

    .line 380
    iget-object v2, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v2}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$600(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 381
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/high16 v10, 0x3f800000    # 1.0f

    .line 382
    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 383
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 384
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setDither(Z)V

    const v4, -0xffff01

    .line 385
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 386
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    int-to-float v3, v3

    int-to-float v4, v5

    move-object v13, v6

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v2

    .line 387
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 389
    :cond_4
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenWidth()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v7

    .line 391
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-object v0, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$800(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;

    move-result-object v11

    const/4 v7, 0x0

    invoke-static/range {v6 .. v11}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    return-object v12

    :catchall_0
    move-exception v0

    .line 364
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_1
    return-object v2
.end method

.method private drawLabelTitle(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v1, p0

    .line 272
    iget-object v0, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    move-result-object v0

    .line 277
    iget-object v2, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 279
    array-length v3, v2

    if-lez v3, :cond_0

    const/4 v3, 0x0

    .line 280
    aget-object v2, v2, v3

    goto :goto_0

    .line 282
    :cond_0
    iget-object v2, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    :goto_0
    move-object v6, v2

    .line 288
    iget v4, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->leftMargin:I

    .line 290
    iget-object v0, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$400(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v7, v2

    add-int v0, v4, v7

    .line 293
    iget-object v2, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v2}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$400(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 295
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/zui/gallery/util/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 299
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    add-int/lit8 v3, v0, 0x0

    add-int/lit8 v5, v2, 0x0

    .line 303
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_1
    move-object v9, v3

    .line 307
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 308
    iget-object v5, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v5}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    move-result-object v5

    iget v5, v5, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->backgroundColor:I

    .line 309
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v5, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 311
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 313
    :cond_2
    iget-object v5, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v5}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$500(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v5

    const v8, 0x7f060203

    invoke-virtual {v5, v8}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDimens(I)I

    move-result v5

    .line 315
    iget-object v8, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v8}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$600(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 316
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v8, 0x3f800000    # 1.0f

    .line 317
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v8, 0x1

    .line 318
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 319
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setDither(Z)V

    const v8, -0xffff01

    .line 320
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    int-to-float v13, v0

    int-to-float v14, v2

    move-object v10, v3

    .line 322
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 324
    :cond_3
    iget-object v0, v1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$400(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    return-object v9

    :catchall_0
    move-exception v0

    .line 299
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private drawLableCount(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 8

    .line 397
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    move-result-object v0

    .line 398
    iget-object v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    .line 400
    iget v2, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->leftMargin:I

    .line 401
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$900(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int v1, v2, v5

    .line 402
    iget v3, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->titleRightMargin:I

    add-int/2addr v1, v3

    .line 405
    monitor-enter p0

    .line 406
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v3

    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v6}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$1000(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)I

    move-result v6

    invoke-virtual {v3, v1, v6}, Lcom/zui/gallery/util/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 407
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x0

    .line 411
    iget v3, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int/lit8 v3, v3, 0x0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_0
    move-object v7, v3

    .line 414
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 415
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    move-result-object v3

    iget v3, v3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->backgroundColor:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 418
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 420
    :cond_1
    iget p1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    iget v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->countFontSize:I

    sub-int/2addr p1, v0

    div-int/lit8 v3, p1, 0x2

    .line 421
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$900(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    return-object v7

    :catchall_0
    move-exception p1

    .line 407
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 198
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)[Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)[Landroid/graphics/Bitmap;
    .locals 4

    .line 471
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->mSourceType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    new-array v0, v2, [Landroid/graphics/Bitmap;

    .line 473
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->drawContinuousLabel(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    new-array v0, v2, [Landroid/graphics/Bitmap;

    .line 476
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->drawDuration(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_0

    :cond_1
    new-array v0, v3, [Landroid/graphics/Bitmap;

    .line 479
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->drawLabelTitle(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 480
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->drawLabelLocation(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v0, v1

    .line 481
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->needLoadCount:Z

    if-eqz v1, :cond_2

    .line 482
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;->drawLableCount(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    aput-object p1, v0, v2

    :cond_2
    :goto_0
    return-object v0
.end method
