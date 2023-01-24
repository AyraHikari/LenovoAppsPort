.class Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask$1;
.super Ljava/lang/Object;
.source "Best4KVideoSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;

.field final synthetic val$timeUs:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;I)V
    .locals 0

    .line 783
    iput-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask$1;->this$1:Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;

    iput p2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask$1;->val$timeUs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 786
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask$1;->this$1:Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;

    iget-object v0, v0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    iget v1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask$1;->val$timeUs:I

    invoke-static {v0, v1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$1100(Lcom/zui/gallery/app/Best4KVideoSelectActivity;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask$1;->this$1:Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;

    iget-object v1, v1, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-static {v1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$1200(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 788
    iget-object v1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask$1;->this$1:Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;

    iget-object v1, v1, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-static {v1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$1200(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
