.class Lcom/google/vr/sdk/widgets/video/deps/gG$1;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/gG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/vr/sdk/widgets/video/deps/gG$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/gG$a;Lcom/google/vr/sdk/widgets/video/deps/gG$a;)I
    .locals 0

    .line 2
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/gG$a;->a:I

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gG$a;->a:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/gG$a;

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/gG$a;

    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gG$1;->a(Lcom/google/vr/sdk/widgets/video/deps/gG$a;Lcom/google/vr/sdk/widgets/video/deps/gG$a;)I

    move-result p1

    return p1
.end method
