.class Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;
.super Ljava/lang/Object;
.source "EditorDrawTabletUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$buttonNo:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;I)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    iput p2, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->val$buttonNo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 191
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    iget v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->val$buttonNo:I

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$402(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;I)I

    .line 192
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$500(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)[Landroid/widget/Button;

    move-result-object p1

    iget v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->val$buttonNo:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    const/4 v0, 0x4

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 193
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$600(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)V

    .line 194
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$100(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$100(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getParam(I)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/controller/ParameterColor;

    .line 199
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$700(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$400(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->setValue(I)V

    .line 200
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$000(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/editors/EditorDraw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->commitLocalRepresentation()V

    .line 201
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$800(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->setColor([F)V

    .line 202
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$900(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->setColor([F)V

    .line 203
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$1000(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->setColor([F)V

    .line 204
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$1100(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->setColor([F)V

    .line 205
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$1100(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->setOrigColor([F)V

    return-void
.end method
