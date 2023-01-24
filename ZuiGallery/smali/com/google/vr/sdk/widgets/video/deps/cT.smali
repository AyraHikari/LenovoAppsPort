.class public abstract Lcom/google/vr/sdk/widgets/video/deps/cT;
.super Lcom/google/vr/sdk/widgets/video/deps/z;
.source "ForwardingTimeline.java"


# instance fields
.field protected final b:Lcom/google/vr/sdk/widgets/video/deps/z;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/z;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cT;->b:Lcom/google/vr/sdk/widgets/video/deps/z;

    return-void
.end method


# virtual methods
.method public a(IIZ)I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cT;->b:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(IIZ)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;)I
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cT;->b:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public a(Z)I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cT;->b:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(Z)I

    move-result p1

    return p1
.end method

.method public a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Z)Lcom/google/vr/sdk/widgets/video/deps/z$a;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cT;->b:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Z)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcom/google/vr/sdk/widgets/video/deps/z$b;ZJ)Lcom/google/vr/sdk/widgets/video/deps/z$b;
    .locals 6

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cT;->b:Lcom/google/vr/sdk/widgets/video/deps/z;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$b;ZJ)Lcom/google/vr/sdk/widgets/video/deps/z$b;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cT;->b:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->b()I

    move-result v0

    return v0
.end method

.method public b(IIZ)I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cT;->b:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/z;->b(IIZ)I

    move-result p1

    return p1
.end method

.method public b(Z)I
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cT;->b:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->b(Z)I

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cT;->b:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->c()I

    move-result v0

    return v0
.end method
