.class Lcom/zui/gallery/data/LocalAlbumSet$1;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/LocalAlbumSet;->reload()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/LocalAlbumSet;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/LocalAlbumSet;)V
    .locals 0

    .line 1141
    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumSet$1;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet$1;->this$0:Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalAlbumSet;->notifyContentChanged()V

    return-void
.end method
