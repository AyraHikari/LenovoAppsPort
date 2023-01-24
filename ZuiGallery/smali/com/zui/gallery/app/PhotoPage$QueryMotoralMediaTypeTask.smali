.class Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;
.super Landroid/os/AsyncTask;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryMotoralMediaTypeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final item:Lcom/zui/gallery/data/MediaItem;

.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/MediaItem;)V
    .locals 0

    .line 5059
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5060
    iput-object p2, p0, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;->item:Lcom/zui/gallery/data/MediaItem;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 5065
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;->item:Lcom/zui/gallery/data/MediaItem;

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GalleryUtils;->queryMotoralMediaType(Lcom/zui/gallery/data/MediaItem;Landroid/content/ContentResolver;)V

    .line 5066
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5067
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x1

    .line 5069
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5055
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 5075
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$200(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/ui/PhotoView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/PhotoView;->notifyImageChange(I)V

    .line 5077
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-virtual {p1}, Lcom/zui/gallery/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 5079
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-virtual {p1}, Lcom/zui/gallery/app/PhotoPage;->getCurrentMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5080
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;->item:Lcom/zui/gallery/data/MediaItem;

    if-ne p1, v0, :cond_0

    .line 5081
    instance-of v0, p1, Lcom/zui/gallery/data/LocalImage;

    if-eqz v0, :cond_0

    .line 5082
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    check-cast p1, Lcom/zui/gallery/data/LocalImage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/PhotoPage;->access$6100(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/LocalImage;)V

    .line 5083
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$6200(Lcom/zui/gallery/app/PhotoPage;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/PhotoPage;->updateLivePhotoIconView(Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 5055
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
