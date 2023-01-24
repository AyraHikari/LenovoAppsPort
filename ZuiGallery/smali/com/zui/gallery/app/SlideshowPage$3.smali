.class Lcom/zui/gallery/app/SlideshowPage$3;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Lcom/zui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/SlideshowPage;->loadNextBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/FutureListener<",
        "Lcom/zui/gallery/app/SlideshowPage$Slide;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/SlideshowPage;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/zui/gallery/app/SlideshowPage$3;->this$0:Lcom/zui/gallery/app/SlideshowPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/zui/gallery/util/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/Future<",
            "Lcom/zui/gallery/app/SlideshowPage$Slide;",
            ">;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowPage$3;->this$0:Lcom/zui/gallery/app/SlideshowPage;

    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/SlideshowPage$Slide;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/SlideshowPage;->access$302(Lcom/zui/gallery/app/SlideshowPage;Lcom/zui/gallery/app/SlideshowPage$Slide;)Lcom/zui/gallery/app/SlideshowPage$Slide;

    .line 148
    iget-object p1, p0, Lcom/zui/gallery/app/SlideshowPage$3;->this$0:Lcom/zui/gallery/app/SlideshowPage;

    invoke-static {p1}, Lcom/zui/gallery/app/SlideshowPage;->access$400(Lcom/zui/gallery/app/SlideshowPage;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
