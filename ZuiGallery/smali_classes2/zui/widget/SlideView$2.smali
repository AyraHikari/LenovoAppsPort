.class final Lzui/widget/SlideView$2;
.super Landroid/util/IntProperty;
.source "SlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lzui/widget/SlideView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lzui/widget/SlideView;)Ljava/lang/Integer;
    .locals 0

    .line 262
    invoke-static {p1}, Lzui/widget/SlideView;->access$100(Lzui/widget/SlideView;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 259
    check-cast p1, Lzui/widget/SlideView;

    invoke-virtual {p0, p1}, Lzui/widget/SlideView$2;->get(Lzui/widget/SlideView;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 259
    check-cast p1, Lzui/widget/SlideView;

    invoke-virtual {p0, p1, p2}, Lzui/widget/SlideView$2;->setValue(Lzui/widget/SlideView;I)V

    return-void
.end method

.method public setValue(Lzui/widget/SlideView;I)V
    .locals 3

    .line 269
    invoke-static {p1, p2}, Lzui/widget/SlideView;->access$102(Lzui/widget/SlideView;I)I

    .line 270
    invoke-static {p1}, Lzui/widget/SlideView;->access$300(Lzui/widget/SlideView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 271
    invoke-virtual {p1}, Lzui/widget/SlideView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 272
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 274
    :cond_0
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 276
    :goto_0
    invoke-static {p1}, Lzui/widget/SlideView;->access$300(Lzui/widget/SlideView;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
