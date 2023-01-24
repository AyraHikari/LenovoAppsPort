.class Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$1;
.super Ljava/lang/Object;
.source "ImageCaption.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->onDrawRectClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$1;->this$1:Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 415
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$1;->this$1:Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1300(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lzui/app/MessageDialog;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/MessageDialog;->getEditorText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 416
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$1;->this$1:Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;

    iget-object p2, p2, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setCaptionContent(Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$1;->this$1:Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1100(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/editors/EditorCaption;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$1;->this$1:Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;

    iget-object p2, p2, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/editors/EditorCaption;->setLocalRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 420
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$1;->this$1:Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;

    iget-object p2, p2, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->refreshCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 422
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$1;->this$1:Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCaption;

    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$1;->this$1:Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;

    iget-object p2, p2, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;->val$captionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-static {p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->access$1400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;)V

    return-void
.end method
