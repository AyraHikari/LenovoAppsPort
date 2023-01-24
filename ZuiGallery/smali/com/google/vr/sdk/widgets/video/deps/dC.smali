.class public final Lcom/google/vr/sdk/widgets/video/deps/dC;
.super Ljava/lang/Object;
.source "DashWrappingSegmentIndex.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/dA;


# instance fields
.field private final b:Lcom/google/vr/sdk/widgets/video/deps/ao;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ao;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dC;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(J)I
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dC;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ao;->a:I

    return p1
.end method

.method public a(JJ)I
    .locals 0

    .line 9
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dC;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    invoke-virtual {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ao;->a(J)I

    move-result p1

    return p1
.end method

.method public a(I)J
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dC;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ao;->e:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public a(IJ)J
    .locals 0

    .line 7
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dC;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/ao;->d:[J

    aget-wide p1, p2, p1

    return-wide p1
.end method

.method public b(I)Lcom/google/vr/sdk/widgets/video/deps/dJ;
    .locals 7

    .line 8
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/dJ;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dC;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ao;->c:[J

    aget-wide v2, v0, p1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dC;->b:Lcom/google/vr/sdk/widgets/video/deps/ao;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ao;->b:[I

    aget p1, v0, p1

    int-to-long v4, p1

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dJ;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
