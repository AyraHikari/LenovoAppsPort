.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$8;
.super Ljava/lang/Object;
.source "LocalTimeAlbumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->startAddToPrivacyGroup(Ljava/lang/String;Lcom/zui/gallery/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$isVideo:Z


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Ljava/lang/String;Z)V
    .locals 0

    .line 1462
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$8;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    iput-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$8;->val$filePath:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$8;->val$isVideo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start to privacy , filepath is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$8;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangccc"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object v0

    sget-object v1, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$8;->val$filePath:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$8;->val$isVideo:Z

    iget-object v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$8;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v4}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$5400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->encrypt(Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;ZLcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;)V

    return-void
.end method
