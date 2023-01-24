.class Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$6;
.super Ljava/lang/Object;
.source "EditorDrawTabletUI.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


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

    .line 231
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$6;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 0

    return-void
.end method

.method public setColor([F)V
    .locals 5

    const/4 v0, 0x3

    .line 235
    aget v0, p1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$6;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$500(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)[Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$6;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$400(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)I

    move-result v2

    aget-object v1, v1, v2

    .line 237
    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 238
    invoke-static {p1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$6;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$700(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)[I

    move-result-object p1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$6;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$400(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)I

    move-result v2

    aput v0, p1, v2

    .line 240
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 241
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 242
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$6;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$600(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)V

    .line 244
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$6;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$100(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getParam(I)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterColor;

    .line 245
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->setValue(I)V

    .line 246
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$6;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$000(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/editors/EditorDraw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->commitLocalRepresentation()V

    return-void
.end method
