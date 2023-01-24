.class Lcom/zui/gallery/app/MoreAlbumSetPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "MoreAlbumSetPage.java"

# interfaces
.implements Lcom/zui/gallery/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/MoreAlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V
    .locals 0

    .line 1150
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/MoreAlbumSetPage;Lcom/zui/gallery/app/MoreAlbumSetPage$1;)V
    .locals 0

    .line 1150
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage$MyLoadingListener;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 1

    const-string p1, "cloudsyncLog"

    const-string v0, "MyLoadingListener onLoadingFinished"

    .line 1162
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2300(Lcom/zui/gallery/app/MoreAlbumSetPage;I)V

    .line 1164
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2600(Lcom/zui/gallery/app/MoreAlbumSetPage;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1165
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$300(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/ui/AlbumSetSlotView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setForcePlayAnimation(Z)V

    .line 1166
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object p1, p1, Lcom/zui/gallery/app/MoreAlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    .line 1167
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1, v0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2602(Lcom/zui/gallery/app/MoreAlbumSetPage;Z)Z

    :cond_0
    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    const-string v0, "cloudsyncLog"

    const-string v1, "MyLoadingListener onLoadingStarted"

    .line 1153
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2500(Lcom/zui/gallery/app/MoreAlbumSetPage;I)V

    .line 1155
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {v0}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2600(Lcom/zui/gallery/app/MoreAlbumSetPage;)Z

    return-void
.end method
