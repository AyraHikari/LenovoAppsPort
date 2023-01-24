.class Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$1;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "LocalTimeAlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$1;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 229
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;->updateEntry()V

    goto :goto_0

    .line 230
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 231
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->updateEntry()V

    goto :goto_0

    .line 232
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 233
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->updateEntry()V

    :cond_2
    :goto_0
    return-void
.end method
