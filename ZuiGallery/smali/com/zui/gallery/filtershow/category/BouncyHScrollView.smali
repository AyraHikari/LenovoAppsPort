.class public Lcom/zui/gallery/filtershow/category/BouncyHScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "BouncyHScrollView.java"


# static fields
.field private static final MAX_X_OVERSCROLL_DISTANCE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxXOverscrollDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;->mContext:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;->initBounceDistance()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;->initBounceDistance()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;->initBounceDistance()V

    return-void
.end method

.method private initBounceDistance()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 46
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;->mMaxXOverscrollDistance:I

    return-void
.end method

.method private resetScrollWidth(I)V
    .locals 6

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-ltz p1, :cond_3

    .line 57
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, -0x2

    if-ge v2, p1, :cond_1

    .line 63
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 64
    invoke-virtual {v5, v4, v4}, Landroid/view/View;->measure(II)V

    .line 65
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 68
    invoke-virtual {p1, v4, v4}, Landroid/view/View;->measure(II)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr v3, p1

    .line 71
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;->getWidth()I

    move-result p1

    if-ge v3, p1, :cond_2

    .line 72
    invoke-virtual {p0, v0, v0}, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;->smoothScrollTo(II)V

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;->getWidth()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-virtual {p0, v3, v0}, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;->smoothScrollTo(II)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 81
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onScrollChanged: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " t "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "scroll_to"

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 11

    move-object v10, p0

    .line 52
    iget v7, v10, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;->mMaxXOverscrollDistance:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method
