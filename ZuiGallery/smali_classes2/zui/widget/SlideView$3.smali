.class final Lzui/widget/SlideView$3;
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

    .line 306
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lzui/widget/SlideView;)Ljava/lang/Integer;
    .locals 0

    .line 309
    invoke-static {p1}, Lzui/widget/SlideView;->access$400(Lzui/widget/SlideView;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 306
    check-cast p1, Lzui/widget/SlideView;

    invoke-virtual {p0, p1}, Lzui/widget/SlideView$3;->get(Lzui/widget/SlideView;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 306
    check-cast p1, Lzui/widget/SlideView;

    invoke-virtual {p0, p1, p2}, Lzui/widget/SlideView$3;->setValue(Lzui/widget/SlideView;I)V

    return-void
.end method

.method public setValue(Lzui/widget/SlideView;I)V
    .locals 0

    .line 315
    invoke-static {p1, p2}, Lzui/widget/SlideView;->access$402(Lzui/widget/SlideView;I)I

    .line 316
    invoke-static {p1}, Lzui/widget/SlideView;->access$500(Lzui/widget/SlideView;)Landroid/view/View;

    move-result-object p1

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
