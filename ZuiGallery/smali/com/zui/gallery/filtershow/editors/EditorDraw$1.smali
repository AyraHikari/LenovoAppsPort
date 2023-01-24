.class Lcom/zui/gallery/filtershow/editors/EditorDraw$1;
.super Ljava/lang/Object;
.source "EditorDraw.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorDraw;->openUtilityPanel(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorDraw;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorDraw;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDraw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 242
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/zui/gallery/filtershow/filters/ImageFilter;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;

    .line 243
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDraw;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->getDrawRep()Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDraw;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mDrawEdit:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 248
    sput-boolean v1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->isMosaic:Z

    const/4 p2, 0x3

    .line 249
    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->setPramMode(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 251
    sput-boolean p2, Lcom/zui/gallery/filtershow/editors/EditorDraw;->isMosaic:Z

    .line 252
    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->setPramMode(I)V

    .line 262
    :goto_0
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDraw;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getCurrentParam()Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDraw;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mEditControl:Landroid/view/View;

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->control(Lcom/zui/gallery/filtershow/controller/Parameter;Landroid/view/View;)V

    .line 267
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/controller/Control;->updateUI()V

    .line 268
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
