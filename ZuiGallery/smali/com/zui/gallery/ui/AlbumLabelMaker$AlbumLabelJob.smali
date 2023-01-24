.class Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumLabelMaker;
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

.field private final mSourceType:I

.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/AlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    .line 156
    iput p4, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->mSourceType:I

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 13

    .line 161
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumLabelMaker;->access$100(Lcom/zui/gallery/ui/AlbumLabelMaker;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    move-result-object v0

    const-string/jumbo v1, "shenmeguia"

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "shoulbBehiddenLabel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumLabelMaker;->access$200(Lcom/zui/gallery/ui/AlbumLabelMaker;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumLabelMaker;->access$200(Lcom/zui/gallery/ui/AlbumLabelMaker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 166
    :cond_0
    iget-object v6, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 167
    iget-object v10, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumLabelMaker;->access$300(Lcom/zui/gallery/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 173
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumLabelMaker;->access$400(Lcom/zui/gallery/ui/AlbumLabelMaker;)I

    move-result v3

    if-ge v1, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumLabelMaker;->access$400(Lcom/zui/gallery/ui/AlbumLabelMaker;)I

    move-result v1

    :goto_0
    const/16 v3, 0xc8

    if-ge v1, v3, :cond_2

    move v11, v3

    goto :goto_1

    :cond_2
    move v11, v1

    .line 179
    :goto_1
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumLabelMaker;->access$500(Lcom/zui/gallery/ui/AlbumLabelMaker;)I

    move-result v3

    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumLabelMaker;->access$600(Lcom/zui/gallery/ui/AlbumLabelMaker;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/zui/gallery/util/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v1, :cond_3

    add-int/lit8 v1, v11, 0x0

    .line 184
    iget v4, v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int/2addr v4, v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 188
    :cond_3
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 190
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    .line 191
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    .line 189
    invoke-virtual {v9, v3, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v3, 0x0

    .line 196
    invoke-virtual {v9, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 199
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v2

    :cond_4
    const/4 v4, 0x0

    .line 206
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumLabelMaker;->access$700(Lcom/zui/gallery/ui/AlbumLabelMaker;)I

    move-result v5

    .line 208
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumLabelMaker;->access$300(Lcom/zui/gallery/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v8

    move-object v3, v9

    move v7, v11

    invoke-static/range {v3 .. v8}, Lcom/zui/gallery/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    .line 212
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v2

    :cond_5
    const/4 v8, 0x0

    .line 215
    iget p1, v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    iget v0, v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->countFontSize:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumLabelMaker;->access$700(Lcom/zui/gallery/ui/AlbumLabelMaker;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 216
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/zui/gallery/ui/AlbumLabelMaker;

    .line 217
    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumLabelMaker;->access$800(Lcom/zui/gallery/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v12

    move-object v7, v9

    move v9, p1

    .line 216
    invoke-static/range {v7 .. v12}, Lcom/zui/gallery/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    return-object v1

    :catchall_0
    move-exception p1

    .line 180
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 148
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
