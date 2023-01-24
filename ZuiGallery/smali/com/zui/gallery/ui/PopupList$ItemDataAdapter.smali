.class Lcom/zui/gallery/ui/PopupList$ItemDataAdapter;
.super Landroid/widget/BaseAdapter;
.source "PopupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemDataAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/PopupList;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/PopupList;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/zui/gallery/ui/PopupList$ItemDataAdapter;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/PopupList;Lcom/zui/gallery/ui/PopupList$1;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PopupList$ItemDataAdapter;-><init>(Lcom/zui/gallery/ui/PopupList;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList$ItemDataAdapter;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {v0}, Lcom/zui/gallery/ui/PopupList;->access$1000(Lcom/zui/gallery/ui/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList$ItemDataAdapter;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {v0}, Lcom/zui/gallery/ui/PopupList;->access$1000(Lcom/zui/gallery/ui/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList$ItemDataAdapter;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {v0}, Lcom/zui/gallery/ui/PopupList;->access$1000(Lcom/zui/gallery/ui/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/PopupList$Item;

    iget p1, p1, Lcom/zui/gallery/ui/PopupList$Item;->id:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 198
    iget-object p2, p0, Lcom/zui/gallery/ui/PopupList$ItemDataAdapter;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {p2}, Lcom/zui/gallery/ui/PopupList;->access$1100(Lcom/zui/gallery/ui/PopupList;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b00ab

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x1020014

    .line 201
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList$ItemDataAdapter;->this$0:Lcom/zui/gallery/ui/PopupList;

    invoke-static {v0}, Lcom/zui/gallery/ui/PopupList;->access$1000(Lcom/zui/gallery/ui/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/PopupList$Item;

    iget-object p1, p1, Lcom/zui/gallery/ui/PopupList$Item;->title:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
