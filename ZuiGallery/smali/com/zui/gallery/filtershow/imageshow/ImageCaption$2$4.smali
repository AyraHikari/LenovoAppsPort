.class Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$4;
.super Ljava/lang/Object;
.source "ImageCaption.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$but:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;Landroid/widget/Button;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$4;->this$1:Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$4;->val$but:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 467
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 468
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 469
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$4;->val$but:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 471
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2$4;->val$but:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
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
