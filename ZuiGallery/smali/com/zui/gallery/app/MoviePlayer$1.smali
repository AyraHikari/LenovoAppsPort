.class Lcom/zui/gallery/app/MoviePlayer$1;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MoviePlayer;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$1;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer$1;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {v0}, Lcom/zui/gallery/app/MoviePlayer;->access$000(Lcom/zui/gallery/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer$1;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {v0}, Lcom/zui/gallery/app/MoviePlayer;->access$100(Lcom/zui/gallery/app/MoviePlayer;)Lcom/zui/gallery/app/MovieControllerOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->showPlaying()V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer$1;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {v0}, Lcom/zui/gallery/app/MoviePlayer;->access$300(Lcom/zui/gallery/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/MoviePlayer$1;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {v1}, Lcom/zui/gallery/app/MoviePlayer;->access$200(Lcom/zui/gallery/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
