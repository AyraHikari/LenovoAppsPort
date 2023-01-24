.class Lcom/zui/gallery/app/SinglePhotoDataAdapter$1;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "SinglePhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/SinglePhotoDataAdapter;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/SinglePhotoDataAdapter;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter$1;->this$0:Lcom/zui/gallery/app/SinglePhotoDataAdapter;

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 69
    iget-object v0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter$1;->this$0:Lcom/zui/gallery/app/SinglePhotoDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->access$000(Lcom/zui/gallery/app/SinglePhotoDataAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter$1;->this$0:Lcom/zui/gallery/app/SinglePhotoDataAdapter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->access$100(Lcom/zui/gallery/app/SinglePhotoDataAdapter;Lcom/zui/gallery/app/SinglePhotoDataAdapter$ImageBundle;)V

    goto :goto_1

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/SinglePhotoDataAdapter$1;->this$0:Lcom/zui/gallery/app/SinglePhotoDataAdapter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/util/Future;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;->access$200(Lcom/zui/gallery/app/SinglePhotoDataAdapter;Lcom/zui/gallery/util/Future;)V

    :goto_1
    return-void
.end method
