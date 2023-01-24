.class Lcom/zui/gallery/app/AlbumSetPage$4;
.super Landroid/database/ContentObserver;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetPage;Landroid/os/Handler;)V
    .locals 0

    .line 929
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$4;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 932
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 933
    new-instance p1, Lcom/zui/gallery/app/AlbumSetPage$QueryCSContentSyncTask;

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetPage$4;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/zui/gallery/app/AlbumSetPage$QueryCSContentSyncTask;-><init>(Lcom/zui/gallery/app/AlbumSetPage;Lcom/zui/gallery/app/AlbumSetPage$1;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/AlbumSetPage$QueryCSContentSyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
