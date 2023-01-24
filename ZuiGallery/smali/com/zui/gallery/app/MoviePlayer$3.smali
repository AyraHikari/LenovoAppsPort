.class Lcom/zui/gallery/app/MoviePlayer$3;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 166
    iput-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$3;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 169
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$3;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->access$600(Lcom/zui/gallery/app/MoviePlayer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$3;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->access$100(Lcom/zui/gallery/app/MoviePlayer;)Lcom/zui/gallery/app/MovieControllerOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/MovieControllerOverlay;->show()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
