.class Lcom/zui/gallery/data/LocalAlbumSetMore$1;
.super Ljava/lang/Object;
.source "LocalAlbumSetMore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/LocalAlbumSetMore;->onFutureDone(Lcom/zui/gallery/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/LocalAlbumSetMore;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore$1;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore$1;->this$0:Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalAlbumSetMore;->notifyContentChanged()V

    return-void
.end method
