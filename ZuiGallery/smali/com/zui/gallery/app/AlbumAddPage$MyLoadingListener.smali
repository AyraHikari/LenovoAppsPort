.class Lcom/zui/gallery/app/AlbumAddPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumAddPage.java"

# interfaces
.implements Lcom/zui/gallery/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumAddPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumAddPage;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/AlbumAddPage;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/AlbumAddPage;Lcom/zui/gallery/app/AlbumAddPage$1;)V
    .locals 0

    .line 646
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumAddPage$MyLoadingListener;-><init>(Lcom/zui/gallery/app/AlbumAddPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/app/AlbumAddPage;->access$1300(Lcom/zui/gallery/app/AlbumAddPage;I)V

    .line 656
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/AlbumAddPage;->access$1402(Lcom/zui/gallery/app/AlbumAddPage;Z)Z

    .line 657
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/AlbumAddPage;->access$1500(Lcom/zui/gallery/app/AlbumAddPage;Z)V

    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/app/AlbumAddPage;->access$1600(Lcom/zui/gallery/app/AlbumAddPage;I)V

    .line 650
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/app/AlbumAddPage;->access$1402(Lcom/zui/gallery/app/AlbumAddPage;Z)Z

    return-void
.end method
