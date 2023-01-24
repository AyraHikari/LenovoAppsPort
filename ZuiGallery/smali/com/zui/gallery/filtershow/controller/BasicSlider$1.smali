.class Lcom/zui/gallery/filtershow/controller/BasicSlider$1;
.super Ljava/lang/Object;
.source "BasicSlider.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage$SeekbarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/controller/BasicSlider;->setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/BasicSlider;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/controller/BasicSlider;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/BasicSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchDown()V
    .locals 0

    return-void
.end method

.method public onValueChanged(I)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/BasicSlider;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/controller/BasicSlider;->access$100(Lcom/zui/gallery/filtershow/controller/BasicSlider;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/BasicSlider;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/controller/BasicSlider;->access$000(Lcom/zui/gallery/filtershow/controller/BasicSlider;)Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    move-result-object v1

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->getMinimum()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/BasicSlider;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/controller/BasicSlider;->access$000(Lcom/zui/gallery/filtershow/controller/BasicSlider;)Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/BasicSlider;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/controller/BasicSlider;->access$000(Lcom/zui/gallery/filtershow/controller/BasicSlider;)Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    move-result-object v1

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->getMinimum()I

    move-result v1

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->setValue(I)V

    .line 78
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/BasicSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/BasicSlider;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/BasicSlider;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    return-void
.end method
