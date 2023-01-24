.class Lcom/zui/gallery/app/ExtractFrameProcesser$6;
.super Ljava/lang/Object;
.source "Best4KVideoSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/ExtractFrameProcesser;->extractTask()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field retriever:Landroid/media/MediaMetadataRetriever;

.field final synthetic this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/ExtractFrameProcesser;)V
    .locals 0

    .line 1670
    iput-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$6;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFrameBitmapByTimeOK(J)Landroid/graphics/Bitmap;
    .locals 2

    .line 1687
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$6;->retriever:Landroid/media/MediaMetadataRetriever;

    const/4 v1, 0x2

    .line 1688
    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 2

    .line 1674
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$6;->retriever:Landroid/media/MediaMetadataRetriever;

    .line 1675
    iget-object v1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$6;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v1}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1900(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method private release()V
    .locals 1

    .line 1679
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$6;->retriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    .line 1680
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
