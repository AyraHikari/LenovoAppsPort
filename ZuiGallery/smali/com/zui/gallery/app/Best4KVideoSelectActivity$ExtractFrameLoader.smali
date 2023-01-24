.class Lcom/zui/gallery/app/Best4KVideoSelectActivity$ExtractFrameLoader;
.super Ljava/lang/Object;
.source "Best4KVideoSelectActivity.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/Best4KVideoSelectActivity;
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
.field final synthetic this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$ExtractFrameLoader;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;Lcom/zui/gallery/app/Best4KVideoSelectActivity$1;)V
    .locals 0

    .line 683
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$ExtractFrameLoader;-><init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$ExtractFrameLoader;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mediaItem:Lcom/zui/gallery/data/LocalVideo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$ExtractFrameLoader;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->loadCover(Lcom/zui/gallery/util/ThreadPool$JobContext;)V

    .line 689
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 683
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$ExtractFrameLoader;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
