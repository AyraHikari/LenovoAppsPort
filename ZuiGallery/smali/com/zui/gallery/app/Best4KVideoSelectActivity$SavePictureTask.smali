.class Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;
.super Landroid/os/AsyncTask;
.source "Best4KVideoSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/Best4KVideoSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavePictureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;Lcom/zui/gallery/app/Best4KVideoSelectActivity$1;)V
    .locals 0

    .line 767
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;-><init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    .line 781
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    .line 783
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask$1;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask$1;-><init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 790
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 791
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$1300(Lcom/zui/gallery/app/Best4KVideoSelectActivity;J)Z

    move-result p1

    .line 792
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 767
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    .line 771
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .line 797
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 798
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    const v1, 0x7f100226

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 799
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 803
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$402(Lcom/zui/gallery/app/Best4KVideoSelectActivity;Z)Z

    .line 804
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$400(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    invoke-static {p1, v0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$100(Lcom/zui/gallery/app/Best4KVideoSelectActivity;Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 767
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 767
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity$SavePictureTask;->onProgressUpdate([Landroid/graphics/Bitmap;)V

    return-void
.end method
