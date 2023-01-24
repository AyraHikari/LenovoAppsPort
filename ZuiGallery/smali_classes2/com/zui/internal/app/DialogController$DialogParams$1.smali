.class Lcom/zui/internal/app/DialogController$DialogParams$1;
.super Landroid/widget/ArrayAdapter;
.source "DialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/app/DialogController$DialogParams;->createListView(Lcom/zui/internal/app/DialogController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/internal/app/DialogController$DialogParams;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/DialogController$DialogParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams$1;->this$0:Lcom/zui/internal/app/DialogController$DialogParams;

    iput-object p6, p0, Lcom/zui/internal/app/DialogController$DialogParams$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 952
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 953
    iget-object p3, p0, Lcom/zui/internal/app/DialogController$DialogParams$1;->this$0:Lcom/zui/internal/app/DialogController$DialogParams;

    iget-object p3, p3, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItems:[Z

    if-eqz p3, :cond_0

    .line 954
    iget-object p3, p0, Lcom/zui/internal/app/DialogController$DialogParams$1;->this$0:Lcom/zui/internal/app/DialogController$DialogParams;

    iget-object p3, p3, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItems:[Z

    aget-boolean p3, p3, p1

    if-eqz p3, :cond_0

    .line 956
    iget-object p3, p0, Lcom/zui/internal/app/DialogController$DialogParams$1;->val$listView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-object p2
.end method
