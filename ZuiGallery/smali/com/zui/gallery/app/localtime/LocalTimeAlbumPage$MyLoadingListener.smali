.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "LocalTimeAlbumPage.java"

# interfaces
.implements Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$LocalTimeAlbumLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V
    .locals 0

    .line 1236
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$1;)V
    .locals 0

    .line 1236
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$MyLoadingListener;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V

    return-void
.end method


# virtual methods
.method public onLoadVideoOnly(Z)V
    .locals 0

    return-void
.end method

.method public onLoadingFinished(Z)V
    .locals 2

    .line 1245
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$4800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;I)V

    .line 1246
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$4902(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Z)Z

    .line 1247
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$5000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Z)V

    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    .line 1239
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$5300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;I)V

    .line 1240
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$4902(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Z)Z

    return-void
.end method
