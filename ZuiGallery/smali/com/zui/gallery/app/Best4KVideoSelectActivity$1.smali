.class Lcom/zui/gallery/app/Best4KVideoSelectActivity$1;
.super Landroid/os/Handler;
.source "Best4KVideoSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/Best4KVideoSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$1;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$1;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$000(Lcom/zui/gallery/app/Best4KVideoSelectActivity;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne v0, p1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$1;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    iget-boolean p1, p1, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isPlaying:Z

    xor-int/2addr p1, v1

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$1;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$100(Lcom/zui/gallery/app/Best4KVideoSelectActivity;Z)V

    :cond_1
    :goto_0
    return-void
.end method
