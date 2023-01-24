.class Lcom/zui/gallery/app/MoviePlayer$2;
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

    .line 129
    iput-object p1, p0, Lcom/zui/gallery/app/MoviePlayer$2;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/zui/gallery/app/MoviePlayer$2;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {v0}, Lcom/zui/gallery/app/MoviePlayer;->access$400(Lcom/zui/gallery/app/MoviePlayer;)I

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/zui/gallery/app/MoviePlayer$2;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {v1}, Lcom/zui/gallery/app/MoviePlayer;->access$300(Lcom/zui/gallery/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/app/MoviePlayer$2;->this$0:Lcom/zui/gallery/app/MoviePlayer;

    invoke-static {v2}, Lcom/zui/gallery/app/MoviePlayer;->access$500(Lcom/zui/gallery/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v2

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
