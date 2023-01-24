.class Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;
.super Ljava/lang/Object;
.source "NormalVideoTrimActivity.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/NormalVideoTrimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterFrameLoader"
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
.field final synthetic this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;Lcom/zui/gallery/app/NormalVideoTrimActivity$1;)V
    .locals 0

    .line 495
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;-><init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    .line 500
    iget-object v1, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mediaItem:Lcom/zui/gallery/data/LocalVideo;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 501
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    .line 504
    :cond_0
    iget-object v1, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mediaItem:Lcom/zui/gallery/data/LocalVideo;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/zui/gallery/data/LocalVideo;->requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v1

    move-object/from16 v3, p1

    invoke-interface {v1, v3}, Lcom/zui/gallery/util/ThreadPool$Job;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 506
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 507
    iget-object v4, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    invoke-static {v4}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->access$000(Lcom/zui/gallery/app/NormalVideoTrimActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    .line 508
    iget-object v6, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    const/16 v7, 0x64

    invoke-virtual {v6, v1, v7}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->centerSquareScaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 510
    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getNvsEffect()Lcom/meicam/effect/sdk/NvsEffect;

    move-result-object v14

    .line 513
    iget-object v7, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v7, v7, Lcom/zui/gallery/app/NormalVideoTrimActivity;->effectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->initialize(I)Z

    .line 515
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    .line 516
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 517
    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 518
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    .line 520
    new-instance v10, Lcom/meicam/sdk/NvsVideoFrameInfo;

    invoke-direct {v10}, Lcom/meicam/sdk/NvsVideoFrameInfo;-><init>()V

    .line 521
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iput v7, v10, Lcom/meicam/sdk/NvsVideoFrameInfo;->frameWidth:I

    .line 522
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iput v7, v10, Lcom/meicam/sdk/NvsVideoFrameInfo;->frameHeight:I

    .line 523
    iput v8, v10, Lcom/meicam/sdk/NvsVideoFrameInfo;->pixelFormat:I

    .line 525
    iget-object v7, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v7, v7, Lcom/zui/gallery/app/NormalVideoTrimActivity;->effectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const/16 v17, 0x0

    move-object v8, v14

    move-object v2, v14

    move-wide v14, v15

    move/from16 v16, v17

    .line 525
    invoke-virtual/range {v7 .. v16}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;[BLcom/meicam/sdk/NvsVideoFrameInfo;IIZJI)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 527
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "run: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "   getPackageId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getPackageId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "VideoEditActivity"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_1

    .line 529
    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 531
    :cond_1
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    .line 534
    iget-object v7, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v7, v7, Lcom/zui/gallery/app/NormalVideoTrimActivity;->effectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v7, v2}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V

    if-eqz v2, :cond_2

    .line 537
    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getNvsEffect()Lcom/meicam/effect/sdk/NvsEffect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meicam/effect/sdk/NvsEffect;->release()V

    const/4 v2, 0x0

    .line 538
    invoke-virtual {v5, v2}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setNvsEffect(Lcom/meicam/effect/sdk/NvsEffect;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object v5, v6

    goto/16 :goto_0

    .line 543
    :cond_3
    iget-object v1, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/NormalVideoTrimActivity;->effectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    if-eqz v1, :cond_4

    .line 544
    iget-object v1, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/NormalVideoTrimActivity;->effectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearCacheResources()V

    .line 545
    iget-object v1, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/NormalVideoTrimActivity;->effectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->cleanUp()V

    .line 548
    :cond_4
    iget-object v1, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoFilterAdapter:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;

    invoke-virtual {v1, v3}, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->setFilterBitmaps(Ljava/util/ArrayList;)V

    .line 549
    iget-object v1, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoFilterAdapter:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    move-object v2, v5

    :cond_5
    return-object v2
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 495
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/NormalVideoTrimActivity$FilterFrameLoader;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
