.class Lcom/zui/gallery/app/AlbumSetPage$12;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;


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
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetPage;)V
    .locals 0

    .line 1540
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$12;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmDialogDismissed(Z)V
    .locals 1

    .line 1557
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$12;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->animDelete(Z)V

    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 0

    return-void
.end method

.method public onProgressComplete(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onProgressStart()V
    .locals 0

    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0

    return-void
.end method
