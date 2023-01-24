.class Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$3;
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

.field final synthetic val$current:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;I)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$3;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    iput p2, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$3;->val$current:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 144
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$3;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    iget v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$3;->val$current:I

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$302(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;I)I

    .line 145
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$3;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$100(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$3;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    .line 149
    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$100(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getParam(I)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;

    .line 150
    iget v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$3;->val$current:I

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;->setSelected(I)V

    .line 151
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$3;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->resetStyle()V

    .line 152
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$3;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$000(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/editors/EditorDraw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->commitLocalRepresentation()V

    return-void
.end method
