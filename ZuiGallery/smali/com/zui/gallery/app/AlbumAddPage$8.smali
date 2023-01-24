.class Lcom/zui/gallery/app/AlbumAddPage$8;
.super Ljava/lang/Object;
.source "AlbumAddPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumAddPage;->updateTitileBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumAddPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumAddPage;)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 769
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumAddPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 770
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    goto :goto_0

    .line 772
    :cond_0
    new-instance p1, Lzui/app/ActionDialog$Builder;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentActionDialogTheme(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lzui/app/ActionDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f100087

    .line 773
    invoke-virtual {p1, v0}, Lzui/app/ActionDialog$Builder;->setTitle(I)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 774
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/app/AlbumAddPage$8$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumAddPage$8$1;-><init>(Lcom/zui/gallery/app/AlbumAddPage$8;)V

    invoke-virtual {p1, v0, v1}, Lzui/app/ActionDialog$Builder;->setOptionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 783
    invoke-virtual {p1, v0, v1}, Lzui/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/ActionDialog$Builder;->show()Lzui/app/ActionDialog;

    :goto_0
    return-void
.end method
