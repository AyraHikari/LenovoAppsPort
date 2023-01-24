.class public Lcom/zui/gallery/ui/PopupList;
.super Ljava/lang/Object;
.source "PopupList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/PopupList$ItemDataAdapter;,
        Lcom/zui/gallery/ui/PopupList$Item;,
        Lcom/zui/gallery/ui/PopupList$OnPopupItemClickListener;
    }
.end annotation


# instance fields
.field private final mAnchorView:Landroid/view/View;

.field private mContentList:Landroid/widget/ListView;

.field private final mContext:Landroid/content/Context;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/ui/PopupList$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnPopupItemClickListener:Lcom/zui/gallery/ui/PopupList$OnPopupItemClickListener;

.field private mPopupHeight:I

.field private mPopupOffsetX:I

.field private mPopupOffsetY:I

.field private mPopupWidth:I

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/PopupList;->mItems:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Lcom/zui/gallery/ui/PopupList$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/PopupList$1;-><init>(Lcom/zui/gallery/ui/PopupList;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/PopupList;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 102
    new-instance v0, Lcom/zui/gallery/ui/PopupList$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/PopupList$2;-><init>(Lcom/zui/gallery/ui/PopupList;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/PopupList;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 114
    new-instance v0, Lcom/zui/gallery/ui/PopupList$3;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/PopupList$3;-><init>(Lcom/zui/gallery/ui/PopupList;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/PopupList;->mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 70
    iput-object p1, p0, Lcom/zui/gallery/ui/PopupList;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/zui/gallery/ui/PopupList;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/PopupList;)Landroid/widget/PopupWindow;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zui/gallery/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$002(Lcom/zui/gallery/ui/PopupList;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/zui/gallery/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/PopupList;)Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zui/gallery/ui/PopupList;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/ui/PopupList;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zui/gallery/ui/PopupList;->mItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/ui/PopupList;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zui/gallery/ui/PopupList;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/PopupList;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zui/gallery/ui/PopupList;->mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/PopupList;)Lcom/zui/gallery/ui/PopupList$OnPopupItemClickListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zui/gallery/ui/PopupList;->mOnPopupItemClickListener:Lcom/zui/gallery/ui/PopupList$OnPopupItemClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/ui/PopupList;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/zui/gallery/ui/PopupList;->updatePopupLayoutParams()V

    return-void
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/PopupList;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/zui/gallery/ui/PopupList;->mPopupOffsetX:I

    return p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/PopupList;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/zui/gallery/ui/PopupList;->mPopupOffsetY:I

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/PopupList;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/zui/gallery/ui/PopupList;->mPopupWidth:I

    return p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/ui/PopupList;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/zui/gallery/ui/PopupList;->mPopupHeight:I

    return p0
.end method

.method private createPopupWindow()Landroid/widget/PopupWindow;
    .locals 5

    .line 155
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zui/gallery/ui/PopupList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 156
    iget-object v1, p0, Lcom/zui/gallery/ui/PopupList;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 158
    iget-object v1, p0, Lcom/zui/gallery/ui/PopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zui/gallery/ui/PopupList;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x101006d

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/zui/gallery/ui/PopupList;->mContentList:Landroid/widget/ListView;

    .line 163
    new-instance v2, Lcom/zui/gallery/ui/PopupList$ItemDataAdapter;

    invoke-direct {v2, p0, v3}, Lcom/zui/gallery/ui/PopupList$ItemDataAdapter;-><init>(Lcom/zui/gallery/ui/PopupList;Lcom/zui/gallery/ui/PopupList$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    iget-object v1, p0, Lcom/zui/gallery/ui/PopupList;->mContentList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zui/gallery/ui/PopupList;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 165
    iget-object v1, p0, Lcom/zui/gallery/ui/PopupList;->mContentList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v1, 0x1

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-object v0
.end method

.method private updatePopupLayoutParams()V
    .locals 6

    .line 138
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList;->mContentList:Landroid/widget/ListView;

    .line 139
    iget-object v1, p0, Lcom/zui/gallery/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 141
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 142
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 144
    iget-object v1, p0, Lcom/zui/gallery/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/zui/gallery/ui/PopupList;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;)I

    move-result v1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    .line 145
    iget-object v3, p0, Lcom/zui/gallery/ui/PopupList;->mContentList:Landroid/widget/ListView;

    const/4 v4, 0x0

    .line 146
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v5, -0x80000000

    .line 147
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 145
    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->measure(II)V

    .line 148
    invoke-virtual {v0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/zui/gallery/ui/PopupList;->mPopupWidth:I

    .line 149
    invoke-virtual {v0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v0

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/PopupList;->mPopupHeight:I

    .line 150
    iget v0, v2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iput v0, p0, Lcom/zui/gallery/ui/PopupList;->mPopupOffsetX:I

    .line 151
    iget v0, v2, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    iput v0, p0, Lcom/zui/gallery/ui/PopupList;->mPopupOffsetY:I

    return-void
.end method


# virtual methods
.method public addItem(ILjava/lang/String;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/zui/gallery/ui/PopupList$Item;

    invoke-direct {v1, p1, p2}, Lcom/zui/gallery/ui/PopupList$Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearItems()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public findItem(I)Lcom/zui/gallery/ui/PopupList$Item;
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/PopupList$Item;

    .line 174
    iget v2, v1, Lcom/zui/gallery/ui/PopupList$Item;->id:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setOnPopupItemClickListener(Lcom/zui/gallery/ui/PopupList$OnPopupItemClickListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/zui/gallery/ui/PopupList;->mOnPopupItemClickListener:Lcom/zui/gallery/ui/PopupList$OnPopupItemClickListener;

    return-void
.end method

.method public show()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/PopupList;->mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 130
    invoke-direct {p0}, Lcom/zui/gallery/ui/PopupList;->createPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 131
    invoke-direct {p0}, Lcom/zui/gallery/ui/PopupList;->updatePopupLayoutParams()V

    .line 132
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/zui/gallery/ui/PopupList;->mPopupWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 133
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/zui/gallery/ui/PopupList;->mPopupHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 134
    iget-object v0, p0, Lcom/zui/gallery/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zui/gallery/ui/PopupList;->mAnchorView:Landroid/view/View;

    iget v2, p0, Lcom/zui/gallery/ui/PopupList;->mPopupOffsetX:I

    iget v3, p0, Lcom/zui/gallery/ui/PopupList;->mPopupOffsetY:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
