.class Lcom/zui/gallery/app/AlbumSetPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/zui/gallery/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/AlbumSetPage;)V
    .locals 0

    .line 1293
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/AlbumSetPage;Lcom/zui/gallery/app/AlbumSetPage$1;)V
    .locals 0

    .line 1293
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/zui/gallery/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 1

    const-string p1, "cloudsyncLog"

    const-string v0, "MyLoadingListener onLoadingFinished"

    .line 1305
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/gallery/app/AlbumSetPage;->access$2500(Lcom/zui/gallery/app/AlbumSetPage;I)V

    .line 1307
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetPage;->access$2800(Lcom/zui/gallery/app/AlbumSetPage;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1308
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetPage;->access$300(Lcom/zui/gallery/app/AlbumSetPage;)Lcom/zui/gallery/ui/AlbumSetSlotView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setForcePlayAnimation(Z)V

    .line 1309
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    .line 1310
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {p1, v0}, Lcom/zui/gallery/app/AlbumSetPage;->access$2802(Lcom/zui/gallery/app/AlbumSetPage;Z)Z

    :cond_0
    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    const-string v0, "cloudsyncLog"

    const-string v1, "MyLoadingListener onLoadingStarted"

    .line 1296
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/app/AlbumSetPage;->access$2700(Lcom/zui/gallery/app/AlbumSetPage;I)V

    .line 1298
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetPage;->access$2800(Lcom/zui/gallery/app/AlbumSetPage;)Z

    return-void
.end method
