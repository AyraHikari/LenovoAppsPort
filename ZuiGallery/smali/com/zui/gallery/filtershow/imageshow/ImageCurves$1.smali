.class Lcom/zui/gallery/filtershow/imageshow/ImageCurves$1;
.super Ljava/lang/Object;
.source "ImageCurves.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->showPopupMenu(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/imageshow/ImageCurves;Landroid/widget/Button;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$1;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "curves"

    const-string v1, "onMenuItemClick: 1111"

    .line 133
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->setChannel(I)V

    .line 135
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$1;->val$button:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    iget-object v1, v1, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mIdStrLut:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method
