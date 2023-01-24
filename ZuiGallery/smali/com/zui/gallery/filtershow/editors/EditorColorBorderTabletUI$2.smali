.class Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$2;
.super Ljava/lang/Object;
.source "EditorColorBorderTabletUI.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->setupCBCornerSizeSeekBar(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$000(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getParam(I)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 142
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMinimum()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    .line 143
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    iget-object p2, p2, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->mCBCornerSizeValue:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$100(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/editors/EditorColorBorder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->commitLocalRepresentation()V

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
