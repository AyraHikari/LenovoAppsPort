.class Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;
.super Landroid/os/AsyncTask;
.source "FocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/FocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mBitmapSize:I

.field final synthetic this$0:Lcom/zui/gallery/filtershow/FocusActivity;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/FocusActivity;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 439
    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$1400(Lcom/zui/gallery/filtershow/FocusActivity;)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;->mBitmapSize:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2

    .line 445
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$1500(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/net/Uri;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;->mBitmapSize:I

    invoke-static {p1, v0, v1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$1600(Lcom/zui/gallery/filtershow/FocusActivity;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 435
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 472
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 475
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "not depth Image"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 476
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->finish()V

    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$002(Lcom/zui/gallery/filtershow/FocusActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 480
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$000(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/FocusActivity;->access$1702(Lcom/zui/gallery/filtershow/FocusActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 483
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$1800(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 435
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Boolean;)V
    .locals 0

    .line 467
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 435
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;->onProgressUpdate([Ljava/lang/Boolean;)V

    return-void
.end method
