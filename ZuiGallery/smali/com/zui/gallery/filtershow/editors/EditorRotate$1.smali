.class Lcom/zui/gallery/filtershow/editors/EditorRotate$1;
.super Ljava/lang/Object;
.source "EditorRotate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorRotate;->openUtilityPanel(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorRotate;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorRotate;Landroid/widget/Button;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorRotate$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorRotate;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorRotate$1;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorRotate$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorRotate;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/editors/EditorRotate;->mImageRotate:Lcom/zui/gallery/filtershow/imageshow/ImageRotate;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;->rotate()V

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorRotate$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorRotate;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/editors/EditorRotate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorRotate$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorRotate;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/editors/EditorRotate;->getTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorRotate$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorRotate;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/editors/EditorRotate;->mImageRotate:Lcom/zui/gallery/filtershow/imageshow/ImageRotate;

    .line 78
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageRotate;->getLocalValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorRotate$1;->val$button:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
