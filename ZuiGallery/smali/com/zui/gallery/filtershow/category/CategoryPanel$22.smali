.class Lcom/zui/gallery/filtershow/category/CategoryPanel$22;
.super Ljava/lang/Object;
.source "CategoryPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/category/CategoryPanel;->initAspectVerticalPanel(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V
    .locals 0

    .line 1333
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$22;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x1

    .line 1339
    sput p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropType:I

    .line 1340
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$22;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect9to16Vertical:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$22;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$700(Lcom/zui/gallery/filtershow/category/CategoryPanel;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$800(Lcom/zui/gallery/filtershow/category/CategoryPanel;IZ)V

    .line 1342
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$22;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$702(Lcom/zui/gallery/filtershow/category/CategoryPanel;I)I

    .line 1343
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$22;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$700(Lcom/zui/gallery/filtershow/category/CategoryPanel;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$800(Lcom/zui/gallery/filtershow/category/CategoryPanel;IZ)V

    .line 1344
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$22;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 1345
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getEditor()Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/editors/EditorCrop;

    .line 1346
    iget-boolean v0, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsVertical:Z

    if-eqz v0, :cond_1

    const v0, 0x7f080112

    goto :goto_0

    :cond_1
    const v0, 0x7f08010c

    .line 1347
    :goto_0
    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->setCropType(I)V

    .line 1348
    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->changeCropAspect(I)V

    return-void
.end method
