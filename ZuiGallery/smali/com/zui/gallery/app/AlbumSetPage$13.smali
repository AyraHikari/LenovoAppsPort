.class Lcom/zui/gallery/app/AlbumSetPage$13;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetPage;->showRenameDialog(Lcom/zui/gallery/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetPage;

.field final synthetic val$mediaSet:Lcom/zui/gallery/data/MediaSet;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetPage;Lcom/zui/gallery/data/MediaSet;)V
    .locals 0

    .line 1592
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$13;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetPage$13;->val$mediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1595
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$13;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetPage;->access$3000(Lcom/zui/gallery/app/AlbumSetPage;)Lzui/app/MessageDialog;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/MessageDialog;->getEditorText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1597
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1598
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1599
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1600
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetPage$13;->val$mediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    .line 1601
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetPage$13;->val$mediaSet:Lcom/zui/gallery/data/MediaSet;

    check-cast p2, Lcom/zui/gallery/data/LocalGroupAlbum;

    .line 1602
    invoke-virtual {p2, p1}, Lcom/zui/gallery/data/LocalGroupAlbum;->renameFolderName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
