.class public final Lcom/google/vr/sdk/widgets/video/deps/et;
.super Lcom/google/vr/sdk/widgets/video/deps/T;
.source "SubtitleInputBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/vr/sdk/widgets/video/deps/T;",
        "Ljava/lang/Comparable<",
        "Lcom/google/vr/sdk/widgets/video/deps/et;",
        ">;"
    }
.end annotation


# instance fields
.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/T;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/et;)I
    .locals 4

    .line 3
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/et;->f:J

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/et;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 7
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/et;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/et;->a(Lcom/google/vr/sdk/widgets/video/deps/et;)I

    move-result p1

    return p1
.end method
