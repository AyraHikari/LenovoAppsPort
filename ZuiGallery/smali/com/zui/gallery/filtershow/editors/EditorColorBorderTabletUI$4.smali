.class Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;
.super Ljava/lang/Object;
.source "EditorColorBorderTabletUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->setupColor(Landroid/widget/LinearLayout;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

.field final synthetic val$buttonNo:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;I)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    iput p2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;->val$buttonNo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 182
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    iget v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;->val$buttonNo:I

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$202(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;I)I

    .line 183
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$300(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)[Landroid/widget/Button;

    move-result-object p1

    iget v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;->val$buttonNo:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    const/4 v0, 0x4

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 184
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$400(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)V

    .line 185
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$000(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 189
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$000(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getParam(I)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/controller/ParameterColor;

    .line 190
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$500(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$200(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->setValue(I)V

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$100(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/editors/EditorColorBorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->commitLocalRepresentation()V

    .line 192
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$600(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->setColor([F)V

    .line 193
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$700(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->setColor([F)V

    .line 194
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$800(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->setColor([F)V

    .line 195
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$900(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorCompareView;->setOrigColor([F)V

    return-void
.end method
