.class Lcom/zui/gallery/app/SingleMoviePlayer$4;
.super Ljava/lang/Object;
.source "SingleMovieActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/SingleMoviePlayer;-><init>(Landroid/view/View;Lcom/zui/gallery/app/SingleMovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V
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

    .line 324
    iput-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer$4;->this$0:Lcom/zui/gallery/app/SingleMoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 328
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer$4;->this$0:Lcom/zui/gallery/app/SingleMoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/SingleMoviePlayer;->access$600(Lcom/zui/gallery/app/SingleMoviePlayer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 330
    iget-object p1, p0, Lcom/zui/gallery/app/SingleMoviePlayer$4;->this$0:Lcom/zui/gallery/app/SingleMoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/SingleMoviePlayer;->access$700(Lcom/zui/gallery/app/SingleMoviePlayer;)Lcom/zui/gallery/app/SingleMovieActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/SingleMovieActivity;->close()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
