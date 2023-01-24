.class Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$5;
.super Ljava/lang/Object;
.source "EditorColorBorderTabletUI.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


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


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

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

    .line 224
    aget v0, p1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$300(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)[Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$200(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)I

    move-result v2

    aget-object v1, v1, v2

    .line 226
    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 227
    invoke-static {p1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$500(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)[I

    move-result-object p1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$200(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)I

    move-result v2

    aput v0, p1, v2

    .line 229
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 230
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 231
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$400(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)V

    .line 233
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$000(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getParam(I)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterColor;

    .line 234
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->setValue(I)V

    .line 235
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$5;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->access$100(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;)Lcom/zui/gallery/filtershow/editors/EditorColorBorder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->commitLocalRepresentation()V

    return-void
.end method
