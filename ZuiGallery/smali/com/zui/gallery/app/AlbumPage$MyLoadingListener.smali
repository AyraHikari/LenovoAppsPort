.class Lcom/zui/gallery/app/AlbumPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/zui/gallery/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumPage;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/AlbumPage;)V
    .locals 0

    .line 1205
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/AlbumPage;Lcom/zui/gallery/app/AlbumPage$1;)V
    .locals 0

    .line 1205
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumPage$MyLoadingListener;-><init>(Lcom/zui/gallery/app/AlbumPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 2

    .line 1214
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/app/AlbumPage;->access$1500(Lcom/zui/gallery/app/AlbumPage;I)V

    .line 1215
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/AlbumPage;->access$1602(Lcom/zui/gallery/app/AlbumPage;Z)Z

    .line 1216
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/AlbumPage;->access$1700(Lcom/zui/gallery/app/AlbumPage;Z)V

    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    .line 1208
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/app/AlbumPage;->access$1800(Lcom/zui/gallery/app/AlbumPage;I)V

    .line 1209
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/app/AlbumPage;->access$1602(Lcom/zui/gallery/app/AlbumPage;Z)Z

    return-void
.end method
