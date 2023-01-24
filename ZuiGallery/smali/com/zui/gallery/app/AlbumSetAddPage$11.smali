.class Lcom/zui/gallery/app/AlbumSetAddPage$11;
.super Ljava/lang/Object;
.source "AlbumSetAddPage.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetAddPage;->showAddGroupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

.field final synthetic val$but:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetAddPage;Landroid/widget/Button;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$11;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$11;->val$but:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 978
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 979
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 980
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$11;->val$but:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 982
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$11;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 983
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 984
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 985
    invoke-interface {p1, v2, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 986
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetAddPage$11;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v4}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$2100(Lcom/zui/gallery/app/AlbumSetAddPage;)Lzui/app/MessageDialog;

    move-result-object v4

    invoke-virtual {v4}, Lzui/app/MessageDialog;->getEditor()Landroid/widget/EditText;

    move-result-object v4

    .line 987
    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 988
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 989
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 991
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 993
    :cond_0
    invoke-static {p1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 994
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$11;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$2100(Lcom/zui/gallery/app/AlbumSetAddPage;)Lzui/app/MessageDialog;

    move-result-object p1

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage$11;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v3, v3, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v4, 0x7f100036

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {v3, v4, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzui/app/MessageDialog;->setEditorErrorMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 998
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$11;->val$but:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1001
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$11;->val$but:Landroid/widget/Button;

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
