.class Lcom/zui/gallery/app/MoreAlbumSetPage$4;
.super Landroid/database/ContentObserver;
.source "MoreAlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/MoreAlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MoreAlbumSetPage;Landroid/os/Handler;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$4;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 811
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 812
    new-instance p1, Lcom/zui/gallery/app/MoreAlbumSetPage$QueryCSContentSyncTask;

    iget-object p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$4;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/zui/gallery/app/MoreAlbumSetPage$QueryCSContentSyncTask;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;Lcom/zui/gallery/app/MoreAlbumSetPage$1;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/MoreAlbumSetPage$QueryCSContentSyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
