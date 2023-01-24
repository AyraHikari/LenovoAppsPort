.class public Lzui/widget/ListViewX$XAdapter;
.super Ljava/lang/Object;
.source "ListViewX.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/ListViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XAdapter"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lzui/widget/ListViewX;


# direct methods
.method public constructor <init>(Lzui/widget/ListViewX;Landroid/widget/ListAdapter;)V
    .locals 0

    .line 2003
    iput-object p1, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2001
    iput-object p1, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 2004
    iput-object p2, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method private createSlideView(Landroid/view/View;I)Lzui/widget/SlideView;
    .locals 4

    .line 2123
    new-instance v0, Lzui/widget/SlideView;

    iget-object v1, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {v1}, Lzui/widget/ListViewX;->access$600(Lzui/widget/ListViewX;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {v2}, Lzui/widget/ListViewX;->access$700(Lzui/widget/ListViewX;)Lzui/widget/SlideView$SlideViewParams;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lzui/widget/SlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lzui/widget/SlideView$SlideViewParams;)V

    .line 2124
    invoke-virtual {v0, p1}, Lzui/widget/SlideView;->setContentView(Landroid/view/View;)V

    .line 2125
    iget-object p1, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-virtual {v0, p1}, Lzui/widget/SlideView;->setOnSlideOutItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 2126
    iget-object p1, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-virtual {v0, p1}, Lzui/widget/SlideView;->setOnSlideListener(Lzui/widget/SlideView$OnSlideListener;)V

    .line 2127
    iget-object p1, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-virtual {v0, p1}, Lzui/widget/SlideView;->setOnViewPressedistener(Lzui/widget/SlideView$OnViewPressedListener;)V

    .line 2128
    invoke-virtual {v0, p2}, Lzui/widget/SlideView;->setViewPosition(I)V

    .line 2129
    iget-object p1, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {p1}, Lzui/widget/ListViewX;->access$800(Lzui/widget/ListViewX;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzui/widget/SlideView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2130
    invoke-direct {p0, p2, v0}, Lzui/widget/ListViewX$XAdapter;->updateDivider(ILzui/widget/SlideView;)V

    .line 2131
    iget-object p1, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {p1}, Lzui/widget/ListViewX;->access$900(Lzui/widget/ListViewX;)I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {p1}, Lzui/widget/ListViewX;->access$1000(Lzui/widget/ListViewX;)I

    move-result p1

    if-lez p1, :cond_3

    .line 2132
    :cond_0
    iget-object p1, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {p1}, Lzui/widget/ListViewX;->access$900(Lzui/widget/ListViewX;)I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {p1}, Lzui/widget/ListViewX;->access$900(Lzui/widget/ListViewX;)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lzui/widget/SlideView;->getPaddingStart()I

    move-result p1

    .line 2133
    :goto_0
    invoke-virtual {v0}, Lzui/widget/SlideView;->getPaddingTop()I

    move-result p2

    iget-object v1, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    .line 2134
    invoke-static {v1}, Lzui/widget/ListViewX;->access$1000(Lzui/widget/ListViewX;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {v1}, Lzui/widget/ListViewX;->access$1000(Lzui/widget/ListViewX;)I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lzui/widget/SlideView;->getPaddingEnd()I

    move-result v1

    .line 2135
    :goto_1
    invoke-virtual {v0}, Lzui/widget/SlideView;->getPaddingBottom()I

    move-result v2

    .line 2132
    invoke-virtual {v0, p1, p2, v1, v2}, Lzui/widget/SlideView;->setPadding(IIII)V

    :cond_3
    return-object v0
.end method

.method private getSlideView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 2141
    check-cast p2, Lzui/widget/SlideView;

    if-nez p2, :cond_0

    .line 2145
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lzui/widget/ListViewX$XAdapter;->createSlideView(Landroid/view/View;I)Lzui/widget/SlideView;

    move-result-object p2

    goto :goto_0

    .line 2147
    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {v0}, Lzui/widget/ListViewX;->access$1100(Lzui/widget/ListViewX;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2148
    invoke-virtual {p2, v0}, Lzui/widget/SlideView;->setViewChecked(Z)V

    .line 2150
    :cond_1
    invoke-virtual {p2}, Lzui/widget/SlideView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2153
    iget-object v1, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1, v0, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lzui/widget/SlideView;->setContentView(Landroid/view/View;)V

    .line 2154
    invoke-virtual {p2}, Lzui/widget/SlideView;->requestLayout()V

    .line 2156
    :cond_2
    invoke-direct {p0, p1, p2}, Lzui/widget/ListViewX$XAdapter;->updateDivider(ILzui/widget/SlideView;)V

    .line 2159
    :goto_0
    iget-object p3, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {p3}, Lzui/widget/ListViewX;->access$1100(Lzui/widget/ListViewX;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lzui/widget/SlideView;->showCheckItem(Z)V

    .line 2160
    iget-object p3, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {p3, p2, p1}, Lzui/widget/ListViewX;->access$1200(Lzui/widget/ListViewX;Lzui/widget/SlideView;I)V

    return-object p2
.end method

.method private getWrappedSlideView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 2166
    move-object v0, p2

    check-cast v0, Lzui/widget/SlideViewEx;

    const v1, 0x11000001

    .line 2173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_1

    .line 2170
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2171
    new-instance v0, Lzui/widget/SlideViewEx;

    iget-object p3, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {p3}, Lzui/widget/ListViewX;->access$600(Lzui/widget/ListViewX;)Landroid/content/Context;

    move-result-object p3

    invoke-direct {v0, p3}, Lzui/widget/SlideViewEx;-><init>(Landroid/content/Context;)V

    .line 2172
    invoke-virtual {v0, p2}, Lzui/widget/SlideViewEx;->setSourceView(Landroid/view/View;)V

    .line 2173
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2175
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2176
    invoke-virtual {v0, p3}, Lzui/widget/SlideViewEx;->addFixedView(Landroid/view/View;)V

    .line 2178
    :cond_0
    invoke-direct {p0, p2, p1}, Lzui/widget/ListViewX$XAdapter;->createSlideView(Landroid/view/View;I)Lzui/widget/SlideView;

    move-result-object p2

    .line 2179
    invoke-virtual {v0, p2}, Lzui/widget/SlideViewEx;->addSlideView(Landroid/view/View;)V

    goto :goto_0

    .line 2181
    :cond_1
    invoke-virtual {v0}, Lzui/widget/SlideViewEx;->getSourceView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2184
    iget-object v2, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2185
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 2187
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2188
    invoke-virtual {v0, p3}, Lzui/widget/SlideViewEx;->addFixedView(Landroid/view/View;)V

    .line 2190
    :cond_2
    invoke-direct {p0, p2, p1}, Lzui/widget/ListViewX$XAdapter;->createSlideView(Landroid/view/View;I)Lzui/widget/SlideView;

    move-result-object p2

    .line 2191
    invoke-virtual {v0, p2}, Lzui/widget/SlideViewEx;->addSlideView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 2196
    :goto_0
    iget-object p3, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {p3}, Lzui/widget/ListViewX;->access$1100(Lzui/widget/ListViewX;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lzui/widget/SlideView;->showCheckItem(Z)V

    .line 2197
    iget-object p3, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {p3, p2, p1}, Lzui/widget/ListViewX;->access$1200(Lzui/widget/ListViewX;Lzui/widget/SlideView;I)V

    return-object v0
.end method

.method private updateDivider(ILzui/widget/SlideView;)V
    .locals 3

    .line 2205
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {v0}, Lzui/widget/ListViewX;->access$1300(Lzui/widget/ListViewX;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2206
    invoke-virtual {p2, v1}, Lzui/widget/SlideView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2208
    :cond_0
    invoke-virtual {p0}, Lzui/widget/ListViewX$XAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    if-ne p1, v2, :cond_1

    .line 2209
    iget-object v2, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-virtual {v2}, Lzui/widget/ListViewX;->areFooterDividersEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2210
    :cond_1
    invoke-virtual {p0, p1}, Lzui/widget/ListViewX$XAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_2

    .line 2211
    invoke-virtual {p0, p1}, Lzui/widget/ListViewX$XAdapter;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 2215
    :cond_2
    iget-object p1, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {p1}, Lzui/widget/ListViewX;->access$800(Lzui/widget/ListViewX;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lzui/widget/SlideView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2212
    :cond_3
    :goto_0
    invoke-virtual {p2, v1}, Lzui/widget/SlideView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 2102
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2105
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 2009
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2012
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 2018
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2021
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 2027
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2030
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 2036
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2039
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getOriginAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 2119
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 2045
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2052
    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->this$0:Lzui/widget/ListViewX;

    invoke-static {v0}, Lzui/widget/ListViewX;->access$500(Lzui/widget/ListViewX;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2053
    invoke-direct {p0, p1, p2, p3}, Lzui/widget/ListViewX$XAdapter;->getWrappedSlideView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 2055
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lzui/widget/ListViewX$XAdapter;->getSlideView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 2061
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2064
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 2070
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2073
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 2079
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2082
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 2111
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2114
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 2088
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2089
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 2095
    iget-object v0, p0, Lzui/widget/ListViewX$XAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2096
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
