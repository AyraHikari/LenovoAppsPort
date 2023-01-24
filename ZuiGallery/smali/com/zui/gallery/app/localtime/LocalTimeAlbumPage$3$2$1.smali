.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2$1;
.super Ljava/lang/Thread;
.source "LocalTimeAlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2$1;->this$2:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 672
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2$1;->this$2:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2;

    iget-object v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;

    iget-object v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2$1$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2$1$1;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2$1;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/zui/gallery/util/GroupUtils;->update(Landroid/content/Context;ZLcom/zui/gallery/util/GroupUtils$UpdateListener;)V

    return-void
.end method
