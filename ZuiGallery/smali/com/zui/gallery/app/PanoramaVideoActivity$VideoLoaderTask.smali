.class Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;
.super Landroid/os/AsyncTask;
.source "PanoramaVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PanoramaVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/util/Pair<",
        "Landroid/net/Uri;",
        "Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PanoramaVideoActivity;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/util/Pair;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    aget-object p1, p1, v2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;

    invoke-virtual {v1, v3, p1}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->loadVideo(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 249
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 250
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/zui/gallery/app/PanoramaVideoActivity;->access$202(Lcom/zui/gallery/app/PanoramaVideoActivity;I)I

    .line 251
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;

    const-string v1, "Error opening file. "

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 257
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 234
    check-cast p1, [Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;->doInBackground([Landroid/util/Pair;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 262
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 263
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/PanoramaVideoActivity;->access$500(Lcom/zui/gallery/app/PanoramaVideoActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 234
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 237
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 238
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity$VideoLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/PanoramaVideoActivity;->access$500(Lcom/zui/gallery/app/PanoramaVideoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
