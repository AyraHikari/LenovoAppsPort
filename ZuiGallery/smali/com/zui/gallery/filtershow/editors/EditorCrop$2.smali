.class Lcom/zui/gallery/filtershow/editors/EditorCrop$2;
.super Ljava/lang/Object;
.source "EditorCrop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorCrop;->openUtilityPanel(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorCrop;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorCrop;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorCrop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 185
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorCrop;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->finalApplyCalled()V

    .line 186
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorCrop;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showDefaultImageView()V

    .line 188
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorCrop;

    const v0, 0x7f0802d3

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->access$100(Lcom/zui/gallery/filtershow/editors/EditorCrop;IZ)V

    .line 191
    new-instance p1, Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;-><init>()V

    const/4 v0, 0x3

    .line 192
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->setAdapter(I)V

    .line 193
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorCrop;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setCategoryFragment(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    return-void
.end method
