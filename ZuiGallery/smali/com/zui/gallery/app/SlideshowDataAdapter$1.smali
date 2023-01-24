.class Lcom/zui/gallery/app/SlideshowDataAdapter$1;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/SlideshowDataAdapter;->nextSlide(Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Lcom/zui/gallery/app/SlideshowPage$Slide;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/SlideshowDataAdapter;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$1;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Lcom/zui/gallery/app/SlideshowPage$Slide;
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-interface {p1, v0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setMode(I)Z

    .line 179
    iget-object p1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter$1;->this$0:Lcom/zui/gallery/app/SlideshowDataAdapter;

    invoke-static {p1}, Lcom/zui/gallery/app/SlideshowDataAdapter;->access$900(Lcom/zui/gallery/app/SlideshowDataAdapter;)Lcom/zui/gallery/app/SlideshowPage$Slide;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/SlideshowDataAdapter$1;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Lcom/zui/gallery/app/SlideshowPage$Slide;

    move-result-object p1

    return-object p1
.end method
