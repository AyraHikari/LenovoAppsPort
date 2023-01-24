.class Lcom/zui/gallery/ui/AlbumSlidingWindow$1;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/AlbumSlidingWindow;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/app/AlbumDataLoader;ILcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/AlbumSlidingWindow;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$1;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->updateEntry()V

    goto :goto_0

    .line 148
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->updateEntry()V

    :goto_0
    return-void
.end method
