.class Lcom/zui/gallery/app/ExtractFrameProcesser$2;
.super Ljava/lang/Object;
.source "Best4KVideoSelectActivity.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/ExtractFrameProcesser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/ExtractFrameProcesser;)V
    .locals 0

    .line 1400
    iput-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$2;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$2;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$000(Lcom/zui/gallery/app/ExtractFrameProcesser;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setCancelListener(Lcom/zui/gallery/util/ThreadPool$CancelListener;)V
    .locals 0

    return-void
.end method

.method public setMode(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
