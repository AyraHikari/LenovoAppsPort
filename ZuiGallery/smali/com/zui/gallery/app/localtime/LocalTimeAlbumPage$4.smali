.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;
.super Ljava/lang/Thread;
.source "LocalTimeAlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 730
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$3000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4$1;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/zui/gallery/util/GroupUtils;->update(Landroid/content/Context;ZLcom/zui/gallery/util/GroupUtils$UpdateListener;)V

    return-void
.end method
