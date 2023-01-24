.class Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;
.super Ljava/lang/Object;
.source "ImageCaption.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/caption/view/DrawRect$onDrawRectClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->setCaptionRepresentation(Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;Lcom/zui/gallery/filtershow/caption/view/DrawRect;Lcom/zui/gallery/filtershow/imageshow/ImageShow;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

.field final synthetic val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawRectClick(I)V
    .locals 3

    .line 399
    new-instance p1, Lzui/app/MessageDialog$Builder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentMessageDialogTheme(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f100185

    .line 400
    invoke-virtual {p1, v0}, Lzui/app/MessageDialog$Builder;->setTitle(I)Lzui/app/MessageDialog$Builder;

    const/4 v0, 0x2

    .line 401
    invoke-virtual {p1, v0}, Lzui/app/MessageDialog$Builder;->setMessageDialogType(I)Lzui/app/MessageDialog$Builder;

    .line 402
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10006f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzui/app/MessageDialog$Builder;->setEditorHint(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzui/app/MessageDialog$Builder;->setEditorText(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    .line 410
    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$1;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;)V

    .line 409
    invoke-virtual {p1, v0, v1}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    .line 425
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    .line 426
    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$2;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;)V

    .line 425
    invoke-virtual {p1, v0, v1}, Lzui/app/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    .line 434
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-virtual {p1}, Lzui/app/MessageDialog$Builder;->show()Lzui/app/MessageDialog;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1302(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Lzui/app/MessageDialog;)Lzui/app/MessageDialog;

    .line 435
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1300(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lzui/app/MessageDialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lzui/app/MessageDialog;->setCanceledOnTouchOutside(Z)V

    .line 436
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1300(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lzui/app/MessageDialog;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x5

    .line 437
    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 438
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1300(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lzui/app/MessageDialog;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/MessageDialog;->getEditor()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 440
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1300(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lzui/app/MessageDialog;

    move-result-object p1

    new-instance v1, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$3;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$3;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;)V

    invoke-virtual {p1, v1}, Lzui/app/MessageDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 450
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1300(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lzui/app/MessageDialog;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lzui/app/MessageDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 452
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1300(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lzui/app/MessageDialog;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$4;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$4;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog;->setEditorTextWatcher(Landroid/text/TextWatcher;)V

    return-void
.end method
