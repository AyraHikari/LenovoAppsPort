.class Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$1;
.super Ljava/lang/Object;
.source "LocalVideoExtractFrameRequest.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->doTask(Lcom/zui/gallery/util/ThreadPool$JobContext;Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;

.field final synthetic val$bitmapArr:[Landroid/graphics/Bitmap;

.field final synthetic val$info:Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;

.field final synthetic val$jc:Lcom/zui/gallery/util/ThreadPool$JobContext;

.field final synthetic val$mDoneSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;Lcom/zui/gallery/util/ThreadPool$JobContext;Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$1;->this$0:Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;

    iput-object p2, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$1;->val$jc:Lcom/zui/gallery/util/ThreadPool$JobContext;

    iput-object p3, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$1;->val$info:Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;

    iput-object p4, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$1;->val$bitmapArr:[Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$1;->val$mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$1;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4

    .line 113
    iget-object p1, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$1;->this$0:Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;

    iget-object v0, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$1;->val$jc:Lcom/zui/gallery/util/ThreadPool$JobContext;

    iget-object v1, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$1;->val$info:Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;

    iget-object v2, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$1;->val$bitmapArr:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$1;->val$mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;->access$000(Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;Lcom/zui/gallery/util/ThreadPool$JobContext;Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    .line 114
    iget-object p1, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$1;->val$mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x0

    return-object p1
.end method
