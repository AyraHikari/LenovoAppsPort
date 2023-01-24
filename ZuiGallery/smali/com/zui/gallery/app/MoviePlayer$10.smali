.class Lcom/zui/gallery/app/MoviePlayer$10;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MoviePlayer;->onError(Landroid/media/MediaPlayer;II)Z
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

    .line 431
    iput-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$10;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer$10;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {v0}, Lcom/zui/gallery/app/MoviePlayer;->access$1100(Lcom/zui/gallery/app/MoviePlayer;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1002b1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 435
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer$10;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {v0}, Lcom/zui/gallery/app/MoviePlayer;->access$1200(Lcom/zui/gallery/app/MoviePlayer;)Lcom/zui/gallery/app/MovieActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieActivity;->close()V

    return-void
.end method
