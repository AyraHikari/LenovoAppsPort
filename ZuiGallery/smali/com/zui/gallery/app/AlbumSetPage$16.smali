.class Lcom/zui/gallery/app/AlbumSetPage$16;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$but:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetPage;Landroid/widget/Button;)V
    .locals 0

    .line 1636
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$16;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetPage$16;->val$but:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1648
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1649
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1650
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage$16;->val$but:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1652
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage$16;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1653
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 1654
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1655
    invoke-interface {p1, v2, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1656
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetPage$16;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {v4}, Lcom/zui/gallery/app/AlbumSetPage;->access$3000(Lcom/zui/gallery/app/AlbumSetPage;)Lzui/app/MessageDialog;

    move-result-object v4

    invoke-virtual {v4}, Lzui/app/MessageDialog;->getEditor()Landroid/widget/EditText;

    move-result-object v4

    .line 1657
    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1658
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 1659
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 1661
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1663
    :cond_0
    invoke-static {p1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1664
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$16;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetPage;->access$3000(Lcom/zui/gallery/app/AlbumSetPage;)Lzui/app/MessageDialog;

    move-result-object p1

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetPage$16;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object v3, v3, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v4, 0x7f100036

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {v3, v4, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzui/app/MessageDialog;->setEditorErrorMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1668
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$16;->val$but:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1671
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$16;->val$but:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
