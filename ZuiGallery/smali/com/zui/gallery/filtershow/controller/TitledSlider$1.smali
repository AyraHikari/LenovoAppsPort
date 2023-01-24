.class Lcom/zui/gallery/filtershow/controller/TitledSlider$1;
.super Ljava/lang/Object;
.source "TitledSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/controller/TitledSlider;->setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/TitledSlider;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/controller/TitledSlider;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/TitledSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/TitledSlider;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    if-eqz p1, :cond_2

    .line 69
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/TitledSlider;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    iget-object p3, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/TitledSlider;

    iget-object p3, p3, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    invoke-interface {p3}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->getMinimum()I

    move-result p3

    add-int/2addr p2, p3

    invoke-interface {p1, p2}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->setValue(I)V

    .line 70
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/TitledSlider;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/controller/TitledSlider;->access$000(Lcom/zui/gallery/filtershow/controller/TitledSlider;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/TitledSlider;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/controller/TitledSlider;->access$000(Lcom/zui/gallery/filtershow/controller/TitledSlider;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/TitledSlider;

    iget-object p2, p2, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    invoke-interface {p2}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->getParameterName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/TitledSlider;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/controller/TitledSlider;->access$100(Lcom/zui/gallery/filtershow/controller/TitledSlider;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/TitledSlider;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/controller/TitledSlider;->access$100(Lcom/zui/gallery/filtershow/controller/TitledSlider;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/TitledSlider;

    iget-object p2, p2, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    invoke-interface {p2}, Lcom/zui/gallery/filtershow/controller/ParameterInteger;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/TitledSlider$1;->this$0:Lcom/zui/gallery/filtershow/controller/TitledSlider;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/TitledSlider;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
