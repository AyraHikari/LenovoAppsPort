.class Lcom/zui/gallery/app/MoviePlayer$6;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MoviePlayer;->setOnSystemUiVisibilityChangeListener()V
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

    .line 239
    iput-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$6;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer$6;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {v0}, Lcom/zui/gallery/app/MoviePlayer;->access$900(Lcom/zui/gallery/app/MoviePlayer;)I

    move-result v0

    xor-int/2addr v0, p1

    .line 243
    iget-object v1, p0, Lcom/zui/gallery/app/MoviePlayer$6;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {v1, p1}, Lcom/zui/gallery/app/MoviePlayer;->access$902(Lcom/zui/gallery/app/MoviePlayer;I)I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$6;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {p1}, Lcom/zui/gallery/app/MoviePlayer;->access$100(Lcom/zui/gallery/app/MoviePlayer;)Lcom/zui/gallery/app/MovieControllerOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/MovieControllerOverlay;->show()V

    :cond_0
    return-void
.end method
