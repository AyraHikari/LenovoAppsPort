.class Lcom/zui/gallery/data/CloudAlbum$1;
.super Ljava/lang/Object;
.source "CloudAlbum.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/CloudAlbum;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/CloudAlbum;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/CloudAlbum;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/zui/gallery/data/CloudAlbum$1;->this$0:Lcom/zui/gallery/data/CloudAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloud album deleted :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/data/CloudAlbum$1;->this$0:Lcom/zui/gallery/data/CloudAlbum;

    invoke-static {v1}, Lcom/zui/gallery/data/CloudAlbum;->access$000(Lcom/zui/gallery/data/CloudAlbum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudAlbum"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/zui/gallery/data/CloudAlbum$1;->this$0:Lcom/zui/gallery/data/CloudAlbum;

    invoke-static {v0}, Lcom/zui/gallery/data/CloudAlbum;->access$100(Lcom/zui/gallery/data/CloudAlbum;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/data/CloudAlbum$1;->this$0:Lcom/zui/gallery/data/CloudAlbum;

    invoke-static {v1}, Lcom/zui/gallery/data/CloudAlbum;->access$000(Lcom/zui/gallery/data/CloudAlbum;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/zui/gallery/util/GroupUtils;->GROUP_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/data/CloudAlbum$1;->this$0:Lcom/zui/gallery/data/CloudAlbum;

    invoke-static {v3}, Lcom/zui/gallery/data/CloudAlbum;->access$000(Lcom/zui/gallery/data/CloudAlbum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/gallery/cloud/CloudManager;->setAlbumAutoSync(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
