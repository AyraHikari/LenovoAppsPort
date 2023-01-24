.class Lcom/zui/gallery/app/MovieActivity$3;
.super Lcom/zui/gallery/app/MoviePlayer;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MovieActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MovieActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MovieActivity;Landroid/view/View;Lcom/zui/gallery/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 6

    .line 195
    iput-object p1, p0, Lcom/zui/gallery/app/MovieActivity$3;->this$0:Lcom/zui/gallery/app/MovieActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/app/MoviePlayer;-><init>(Landroid/view/View;Lcom/zui/gallery/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity$3;->this$0:Lcom/zui/gallery/app/MovieActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/MovieActivity;->access$000(Lcom/zui/gallery/app/MovieActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity$3;->this$0:Lcom/zui/gallery/app/MovieActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieActivity;->close()V

    :cond_0
    return-void
.end method
