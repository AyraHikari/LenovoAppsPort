.class Lzui/widget/BottomToolBar$MoreItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "BottomToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/BottomToolBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreItemAdapter"
.end annotation


# instance fields
.field private final mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lzui/widget/BottomToolBar;


# direct methods
.method public constructor <init>(Lzui/widget/BottomToolBar;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 432
    iput-object p1, p0, Lzui/widget/BottomToolBar$MoreItemAdapter;->this$0:Lzui/widget/BottomToolBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 433
    iput-object p2, p0, Lzui/widget/BottomToolBar$MoreItemAdapter;->mDataList:Ljava/util/ArrayList;

    return-void
.end method

.method private getItemEnableState(I)Z
    .locals 1

    .line 472
    iget-object v0, p0, Lzui/widget/BottomToolBar$MoreItemAdapter;->this$0:Lzui/widget/BottomToolBar;

    invoke-static {v0, p1}, Lzui/widget/BottomToolBar;->access$200(Lzui/widget/BottomToolBar;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lzui/widget/BottomToolBar;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 438
    iget-object v0, p0, Lzui/widget/BottomToolBar$MoreItemAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 448
    iget-object v0, p0, Lzui/widget/BottomToolBar$MoreItemAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "itemId"

    .line 449
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 457
    iget-object p2, p0, Lzui/widget/BottomToolBar$MoreItemAdapter;->this$0:Lzui/widget/BottomToolBar;

    invoke-virtual {p2}, Lzui/widget/BottomToolBar;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lzui/platform/R$layout;->select_dialog_item_option_zui:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 459
    new-instance p3, Lzui/widget/BottomToolBar$ViewHolder;

    iget-object v1, p0, Lzui/widget/BottomToolBar$MoreItemAdapter;->this$0:Lzui/widget/BottomToolBar;

    invoke-direct {p3, v1, v0}, Lzui/widget/BottomToolBar$ViewHolder;-><init>(Lzui/widget/BottomToolBar;Lzui/widget/BottomToolBar$1;)V

    const v0, 0x1020014

    .line 460
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lzui/widget/BottomToolBar$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 461
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lzui/widget/BottomToolBar$ViewHolder;

    .line 465
    :goto_0
    iget-object v0, p3, Lzui/widget/BottomToolBar$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lzui/widget/BottomToolBar$MoreItemAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "text"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object p3, p3, Lzui/widget/BottomToolBar$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lzui/widget/BottomToolBar$MoreItemAdapter;->getItemEnableState(I)Z

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-object p2
.end method
