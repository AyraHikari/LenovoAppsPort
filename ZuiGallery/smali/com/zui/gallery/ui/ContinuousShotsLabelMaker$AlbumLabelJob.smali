.class Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;
.super Ljava/lang/Object;
.source "ContinuousShotsLabelMaker.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumLabelJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCount:Ljava/lang/String;

.field private final mDuration:I

.field private final mSourceType:I

.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;II)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p2, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->mDuration:I

    const-string p1, ""

    .line 108
    iput-object p1, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    .line 110
    iput p3, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->mSourceType:I

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    .line 102
    iput p4, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->mSourceType:I

    const/4 p1, 0x0

    .line 103
    iput p1, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->mDuration:I

    return-void
.end method

.method private drawContinuousLabel(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 10

    .line 129
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;

    invoke-static {v0}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->access$000(Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;)Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

    move-result-object v0

    .line 133
    iget-object v5, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    const/4 v4, 0x0

    .line 141
    iget-object v2, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;

    invoke-static {v2}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->access$100(Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;)Landroid/text/TextPaint;

    move-result-object v7

    .line 142
    iget-object v2, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v6, v2

    add-int/lit8 v2, v6, 0x0

    .line 145
    invoke-virtual {v7}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 146
    iget v8, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v8, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v3, v8

    add-int/lit8 v3, v3, 0x2

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Lcom/zui/gallery/util/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 149
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    add-int/lit8 v2, v2, 0x0

    add-int/lit8 v3, v3, 0x0

    .line 153
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 157
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    iget v0, v0, Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;->continuousBackgroundColor:I

    .line 159
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 162
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    const/4 v3, 0x0

    .line 163
    invoke-static/range {v2 .. v7}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    return-object v8

    :catchall_0
    move-exception p1

    .line 149
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private drawDuration(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 9

    .line 175
    iget-object v0, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;

    invoke-static {v0}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->access$000(Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;)Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;

    invoke-static {v1}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->access$200(Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->mDuration:I

    invoke-static {v1, v2}, Lcom/zui/gallery/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 177
    iget-object v1, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;

    invoke-static {v1}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->access$300(Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;)Landroid/text/TextPaint;

    move-result-object v8

    .line 180
    invoke-virtual {v8, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v7, v1

    add-int/lit8 v1, v7, 0x4b

    .line 183
    invoke-virtual {v8}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 184
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0x1f

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/zui/gallery/util/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 190
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v3, v2, 0x0

    .line 194
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_0
    move-object v1, v3

    .line 197
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 198
    iget v4, v0, Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;->continuousBackgroundColor:I

    .line 199
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 202
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 204
    :cond_1
    iget p1, v0, Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;->durationFontSize:I

    sub-int/2addr v2, p1

    div-int/lit8 v5, v2, 0x2

    const/4 v4, 0x0

    .line 205
    invoke-static/range {v3 .. v8}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    return-object v1

    :catchall_0
    move-exception p1

    .line 190
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 2

    .line 115
    iget v0, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->mSourceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->drawContinuousLabel(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->drawDuration(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
