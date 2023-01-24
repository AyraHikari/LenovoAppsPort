.class Lcom/zui/gallery/data/LocalMergeAllAlbum$1;
.super Ljava/lang/Object;
.source "LocalMergeAllAlbum.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/LocalMergeAllAlbum;->onFutureDone(Lcom/zui/gallery/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/LocalMergeAllAlbum;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/LocalMergeAllAlbum;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum$1;->this$0:Lcom/zui/gallery/data/LocalMergeAllAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum$1;->this$0:Lcom/zui/gallery/data/LocalMergeAllAlbum;

    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->notifyContentChanged()V

    return-void
.end method
