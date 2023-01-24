.class Lcom/zui/gallery/app/AlbumPage$11;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumPage;->updateTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumPage;)V
    .locals 0

    .line 1804
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$11;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1808
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$11;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumPage;->isMultipleChoice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1809
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$11;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->moveTaskToBack(Z)Z

    .line 1811
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$11;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->finishAndRemoveTask()V

    return-void

    .line 1815
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$11;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$2500(Lcom/zui/gallery/app/AlbumPage;)V

    .line 1816
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$11;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->finish()V

    return-void
.end method
