.class Lcom/zui/gallery/filtershow/category/CategoryPanel$3;
.super Ljava/lang/Object;
.source "CategoryPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/category/CategoryPanel;->initFiltersPanel(Landroid/widget/LinearLayout;)V
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

    .line 419
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$3;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 423
    sget-boolean p1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mutiClick:Z

    if-nez p1, :cond_0

    .line 424
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$3;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 v0, 0x1

    .line 425
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->executeMirrorAction(Z)V

    const-string/jumbo p1, "woatxxx"

    const-string v1, "cropImageSelected: ddd"

    .line 427
    invoke-static {p1, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget p1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mGeometryAppliedFiltersCount:I

    add-int/2addr p1, v0

    sput p1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mGeometryAppliedFiltersCount:I

    :cond_0
    return-void
.end method
