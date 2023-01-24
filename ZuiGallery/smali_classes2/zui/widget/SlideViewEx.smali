.class Lzui/widget/SlideViewEx;
.super Landroid/widget/LinearLayout;
.source "SlideViewEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideViewEx"

.field public static final VIEW_STATE_ALLOW_SLIDE:I = 0x2

.field public static final VIEW_STATE_FIXED:I = 0x1

.field public static final VIEW_STATE_NO_CHANGE:I


# instance fields
.field private mFixedView:Landroid/view/View;

.field private mRect:Landroid/graphics/Rect;

.field private mSlideView:Lzui/widget/SlideView;

.field private mSourceView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lzui/widget/SlideViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lzui/widget/SlideViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lzui/widget/SlideViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lzui/widget/SlideViewEx;->mRect:Landroid/graphics/Rect;

    .line 56
    invoke-direct {p0}, Lzui/widget/SlideViewEx;->init()V

    return-void
.end method

.method private addViewInternal(Landroid/view/View;Landroid/view/View;Z)V
    .locals 1

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 136
    invoke-virtual {p0, p2}, Lzui/widget/SlideViewEx;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    :cond_2
    if-nez p2, :cond_3

    .line 143
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    if-eqz p3, :cond_5

    const/4 p3, 0x0

    .line 150
    invoke-virtual {p0, p1, p3, p2}, Lzui/widget/SlideViewEx;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 152
    :cond_5
    invoke-virtual {p0, p1, p2}, Lzui/widget/SlideViewEx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0, v0}, Lzui/widget/SlideViewEx;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public addFixedView(Landroid/view/View;)V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addFixedView:view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlideViewEx"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lzui/widget/SlideViewEx;->mFixedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lzui/widget/SlideViewEx;->addViewInternal(Landroid/view/View;Landroid/view/View;Z)V

    .line 70
    iput-object p1, p0, Lzui/widget/SlideViewEx;->mFixedView:Landroid/view/View;

    return-void
.end method

.method public addSlideView(Landroid/view/View;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lzui/widget/SlideViewEx;->mSlideView:Lzui/widget/SlideView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lzui/widget/SlideViewEx;->addViewInternal(Landroid/view/View;Landroid/view/View;Z)V

    .line 79
    check-cast p1, Lzui/widget/SlideView;

    iput-object p1, p0, Lzui/widget/SlideViewEx;->mSlideView:Lzui/widget/SlideView;

    return-void
.end method

.method public checkForFixedView(Landroid/view/MotionEvent;)I
    .locals 6

    .line 88
    iget-object v0, p0, Lzui/widget/SlideViewEx;->mSlideView:Lzui/widget/SlideView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzui/widget/SlideViewEx;->mFixedView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    iget-object v2, p0, Lzui/widget/SlideViewEx;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 92
    iget-object v0, p0, Lzui/widget/SlideViewEx;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string v2, "SlideViewEx"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    const-string v5, "checkForFixedView:view is set to slide view"

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_1
    if-nez v0, :cond_4

    .line 109
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p1, p0, Lzui/widget/SlideViewEx;->mSlideView:Lzui/widget/SlideView;

    invoke-virtual {p1, v1}, Lzui/widget/SlideView;->setViewFixed(Z)V

    goto :goto_0

    .line 103
    :cond_2
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p1, p0, Lzui/widget/SlideViewEx;->mSlideView:Lzui/widget/SlideView;

    invoke-virtual {p1, v1}, Lzui/widget/SlideView;->setViewFixed(Z)V

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const-string p1, "checkForFixedView:view is set to fixed view"

    .line 96
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lzui/widget/SlideViewEx;->mSlideView:Lzui/widget/SlideView;

    invoke-virtual {p1, v4}, Lzui/widget/SlideView;->setViewFixed(Z)V

    move v1, v4

    :cond_4
    :goto_1
    return v1
.end method

.method public getFixedView()Landroid/view/View;
    .locals 1

    .line 74
    iget-object v0, p0, Lzui/widget/SlideViewEx;->mFixedView:Landroid/view/View;

    return-object v0
.end method

.method public getSlideView()Lzui/widget/SlideView;
    .locals 1

    .line 83
    iget-object v0, p0, Lzui/widget/SlideViewEx;->mSlideView:Lzui/widget/SlideView;

    return-object v0
.end method

.method public getSourceView()Landroid/view/View;
    .locals 1

    .line 64
    iget-object v0, p0, Lzui/widget/SlideViewEx;->mSourceView:Landroid/view/View;

    return-object v0
.end method

.method public isTouchEventValid(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 119
    iget-object v0, p0, Lzui/widget/SlideViewEx;->mFixedView:Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 122
    :cond_0
    iget-object v2, p0, Lzui/widget/SlideViewEx;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 123
    iget-object v0, p0, Lzui/widget/SlideViewEx;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public setSourceView(Landroid/view/View;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lzui/widget/SlideViewEx;->mSourceView:Landroid/view/View;

    return-void
.end method
