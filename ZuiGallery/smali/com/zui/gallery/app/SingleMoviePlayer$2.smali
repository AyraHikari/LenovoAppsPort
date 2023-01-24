.class Lcom/zui/gallery/app/SingleMoviePlayer$2;
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

    .line 285
    iput-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer$2;->this$0:Lcom/zui/gallery/app/SingleMoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/zui/gallery/app/SingleMoviePlayer$2;->this$0:Lcom/zui/gallery/app/SingleMoviePlayer;

    invoke-static {v0}, Lcom/zui/gallery/app/SingleMoviePlayer;->access$400(Lcom/zui/gallery/app/SingleMoviePlayer;)I

    move-result v0

    .line 289
    iget-object v1, p0, Lcom/zui/gallery/app/SingleMoviePlayer$2;->this$0:Lcom/zui/gallery/app/SingleMoviePlayer;

    invoke-static {v1}, Lcom/zui/gallery/app/SingleMoviePlayer;->access$300(Lcom/zui/gallery/app/SingleMoviePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/app/SingleMoviePlayer$2;->this$0:Lcom/zui/gallery/app/SingleMoviePlayer;

    invoke-static {v2}, Lcom/zui/gallery/app/SingleMoviePlayer;->access$500(Lcom/zui/gallery/app/SingleMoviePlayer;)Ljava/lang/Runnable;

    move-result-object v2

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
