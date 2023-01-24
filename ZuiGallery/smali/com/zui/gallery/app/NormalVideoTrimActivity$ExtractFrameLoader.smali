.class Lcom/zui/gallery/app/NormalVideoTrimActivity$ExtractFrameLoader;
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
    name = "ExtractFrameLoader"
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

    .line 474
    iput-object p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$ExtractFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;Lcom/zui/gallery/app/NormalVideoTrimActivity$1;)V
    .locals 0

    .line 474
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/NormalVideoTrimActivity$ExtractFrameLoader;-><init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 4

    .line 478
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$ExtractFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mediaItem:Lcom/zui/gallery/data/LocalVideo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 480
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$ExtractFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mediaItem:Lcom/zui/gallery/data/LocalVideo;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/zui/gallery/data/LocalVideo;->requestViewFrame(ILjava/util/List;Z)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/gallery/util/ThreadPool$Job;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 483
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    .line 490
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$ExtractFrameLoader;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->setBottomFrameThumbnail(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 474
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/NormalVideoTrimActivity$ExtractFrameLoader;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
