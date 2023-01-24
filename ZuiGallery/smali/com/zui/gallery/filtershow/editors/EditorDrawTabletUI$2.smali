.class Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$2;
.super Ljava/lang/Object;
.source "EditorDrawTabletUI.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;-><init>(Lcom/zui/gallery/filtershow/editors/EditorDraw;Landroid/content/Context;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$100(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getParam(I)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 122
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMinimum()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    .line 123
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {p3}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$000(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/editors/EditorDraw;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->commitLocalRepresentation()V

    .line 124
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMinimum()I

    move-result p1

    add-int/2addr p2, p1

    .line 125
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$200(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p2, :cond_0

    const-string v0, "+"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
