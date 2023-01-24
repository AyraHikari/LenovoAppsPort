.class Lcom/zui/gallery/app/MoviePlayer$4;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MoviePlayer;-><init>(Landroid/view/View;Lcom/zui/gallery/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V
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

    .line 175
    iput-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$4;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 178
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$4;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->access$000(Lcom/zui/gallery/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$4;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->access$000(Lcom/zui/gallery/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->canSeekBackward()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$4;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->access$100(Lcom/zui/gallery/app/MoviePlayer;)Lcom/zui/gallery/app/MovieControllerOverlay;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->setSeekable(Z)V

    goto :goto_1

    .line 179
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$4;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->access$100(Lcom/zui/gallery/app/MoviePlayer;)Lcom/zui/gallery/app/MovieControllerOverlay;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/MovieControllerOverlay;->setSeekable(Z)V

    .line 183
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$4;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->access$400(Lcom/zui/gallery/app/MoviePlayer;)I

    return-void
.end method
