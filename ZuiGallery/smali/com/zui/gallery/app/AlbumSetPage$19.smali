.class Lcom/zui/gallery/app/AlbumSetPage$19;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetPage;->updateTitleBar()V
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

    .line 1788
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$19;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1791
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$19;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-boolean p1, p1, Lcom/zui/gallery/app/AlbumSetPage;->mGetContent:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$19;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1794
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$19;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->enterSelectionMode()V

    goto :goto_1

    .line 1792
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$19;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumSetPage;->onBackPressed()V

    :goto_1
    return-void
.end method
