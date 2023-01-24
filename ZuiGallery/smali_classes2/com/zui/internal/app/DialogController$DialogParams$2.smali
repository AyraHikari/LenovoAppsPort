.class Lcom/zui/internal/app/DialogController$DialogParams$2;
.super Landroid/widget/CursorAdapter;
.source "DialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/app/DialogController$DialogParams;->createListView(Lcom/zui/internal/app/DialogController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/zui/internal/app/DialogController$DialogParams;

.field final synthetic val$dialog:Lcom/zui/internal/app/DialogController;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/DialogController$DialogParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lcom/zui/internal/app/DialogController;)V
    .locals 0

    .line 963
    iput-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams$2;->this$0:Lcom/zui/internal/app/DialogController$DialogParams;

    iput-object p5, p0, Lcom/zui/internal/app/DialogController$DialogParams$2;->val$listView:Landroid/widget/ListView;

    iput-object p6, p0, Lcom/zui/internal/app/DialogController$DialogParams$2;->val$dialog:Lcom/zui/internal/app/DialogController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 968
    invoke-virtual {p0}, Lcom/zui/internal/app/DialogController$DialogParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    .line 969
    iget-object p2, p0, Lcom/zui/internal/app/DialogController$DialogParams$2;->this$0:Lcom/zui/internal/app/DialogController$DialogParams;

    iget-object p2, p2, Lcom/zui/internal/app/DialogController$DialogParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/zui/internal/app/DialogController$DialogParams$2;->mLabelIndex:I

    .line 970
    iget-object p2, p0, Lcom/zui/internal/app/DialogController$DialogParams$2;->this$0:Lcom/zui/internal/app/DialogController$DialogParams;

    iget-object p2, p2, Lcom/zui/internal/app/DialogController$DialogParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/internal/app/DialogController$DialogParams$2;->mIsCheckedIndex:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    const p2, 0x1020014

    .line 975
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    .line 976
    iget p2, p0, Lcom/zui/internal/app/DialogController$DialogParams$2;->mLabelIndex:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    iget-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams$2;->val$listView:Landroid/widget/ListView;

    .line 978
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    iget v0, p0, Lcom/zui/internal/app/DialogController$DialogParams$2;->mIsCheckedIndex:I

    .line 979
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 977
    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 984
    iget-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams$2;->this$0:Lcom/zui/internal/app/DialogController$DialogParams;

    iget-object p1, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object p2, p0, Lcom/zui/internal/app/DialogController$DialogParams$2;->val$dialog:Lcom/zui/internal/app/DialogController;

    iget p2, p2, Lcom/zui/internal/app/DialogController;->mMultiChoiceItemLayout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
