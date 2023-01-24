.class final Lzui/widget/ListViewX$6;
.super Landroid/util/IntProperty;
.source "ListViewX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/ListViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lzui/widget/ListViewX;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3137
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lzui/widget/ListViewX;)Ljava/lang/Integer;
    .locals 0

    .line 3140
    invoke-static {p1}, Lzui/widget/ListViewX;->access$3500(Lzui/widget/ListViewX;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3137
    check-cast p1, Lzui/widget/ListViewX;

    invoke-virtual {p0, p1}, Lzui/widget/ListViewX$6;->get(Lzui/widget/ListViewX;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 3137
    check-cast p1, Lzui/widget/ListViewX;

    invoke-virtual {p0, p1, p2}, Lzui/widget/ListViewX$6;->setValue(Lzui/widget/ListViewX;I)V

    return-void
.end method

.method public setValue(Lzui/widget/ListViewX;I)V
    .locals 1

    .line 3146
    invoke-static {p1}, Lzui/widget/ListViewX;->access$3500(Lzui/widget/ListViewX;)I

    move-result v0

    sub-int v0, p2, v0

    .line 3147
    invoke-static {p1, p2}, Lzui/widget/ListViewX;->access$3502(Lzui/widget/ListViewX;I)I

    .line 3148
    invoke-static {p1, p2}, Lzui/widget/ListViewX;->access$102(Lzui/widget/ListViewX;I)I

    .line 3149
    invoke-static {p1}, Lzui/widget/ListViewX;->access$3100(Lzui/widget/ListViewX;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3150
    invoke-static {p1}, Lzui/widget/ListViewX;->access$1500(Lzui/widget/ListViewX;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 3151
    invoke-static {p1, v0}, Lzui/widget/ListViewX;->access$3600(Lzui/widget/ListViewX;I)V

    :cond_0
    const/4 p2, 0x0

    .line 3153
    invoke-static {p1, v0, p2}, Lzui/widget/ListViewX;->access$300(Lzui/widget/ListViewX;IZ)V

    return-void
.end method
