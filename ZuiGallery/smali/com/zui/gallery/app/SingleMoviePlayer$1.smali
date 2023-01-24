.class Lcom/zui/gallery/app/SingleMoviePlayer$1;
.super Ljava/lang/Object;
.source "SingleMovieActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/SingleMoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/SingleMoviePlayer;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/SingleMoviePlayer;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer$1;->this$0:Lcom/zui/gallery/app/SingleMoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer$1;->this$0:Lcom/zui/gallery/app/SingleMoviePlayer;

    invoke-static {v0}, Lcom/zui/gallery/app/SingleMoviePlayer;->access$000(Lcom/zui/gallery/app/SingleMoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer$1;->this$0:Lcom/zui/gallery/app/SingleMoviePlayer;

    invoke-static {v0}, Lcom/zui/gallery/app/SingleMoviePlayer;->access$100(Lcom/zui/gallery/app/SingleMoviePlayer;)Lcom/zui/gallery/app/MovieControllerOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->showPlaying()V

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer$1;->this$0:Lcom/zui/gallery/app/SingleMoviePlayer;

    invoke-static {v0}, Lcom/zui/gallery/app/SingleMoviePlayer;->access$300(Lcom/zui/gallery/app/SingleMoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/SingleMoviePlayer$1;->this$0:Lcom/zui/gallery/app/SingleMoviePlayer;

    invoke-static {v1}, Lcom/zui/gallery/app/SingleMoviePlayer;->access$200(Lcom/zui/gallery/app/SingleMoviePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
