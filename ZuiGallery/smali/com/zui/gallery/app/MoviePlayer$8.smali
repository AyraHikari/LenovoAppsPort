.class Lcom/zui/gallery/app/MoviePlayer$8;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MoviePlayer;

.field final synthetic val$bookmark:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MoviePlayer;I)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$8;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    iput p2, p0, Lcom/zui/gallery/app/MoviePlayer$8;->val$bookmark:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 291
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$8;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->access$000(Lcom/zui/gallery/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object p1

    iget p2, p0, Lcom/zui/gallery/app/MoviePlayer$8;->val$bookmark:I

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 292
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$8;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->access$1000(Lcom/zui/gallery/app/MoviePlayer;)V

    return-void
.end method
