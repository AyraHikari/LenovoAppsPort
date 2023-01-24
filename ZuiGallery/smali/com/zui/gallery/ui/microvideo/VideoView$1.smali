.class Lcom/zui/gallery/ui/microvideo/VideoView$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/microvideo/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/microvideo/VideoView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/microvideo/VideoView;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoView$1;->this$0:Lcom/zui/gallery/ui/microvideo/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 54
    iget-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoView$1;->this$0:Lcom/zui/gallery/ui/microvideo/VideoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/microvideo/VideoView;->access$000(Lcom/zui/gallery/ui/microvideo/VideoView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method
