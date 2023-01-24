.class Lcom/zui/gallery/ui/AlbumSetSlidingWindow$1;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "AlbumSetSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/AlbumSetSlidingWindow;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/app/AlbumSetDataLoader;Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$1;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 211
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$EntryUpdater;

    invoke-interface {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$EntryUpdater;->updateEntry()V

    return-void
.end method
