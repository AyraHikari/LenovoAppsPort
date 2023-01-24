.class Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$1;
.super Ljava/lang/Object;
.source "GalleryPreLoadService.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->getJobContext()Lcom/zui/gallery/util/ThreadPool$JobContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$1;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$1;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$800(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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
