.class public abstract Lcom/google/vr/sdk/widgets/video/deps/dk;
.super Lcom/google/vr/sdk/widgets/video/deps/dv;
.source "BaseMediaChunk.java"


# instance fields
.field private j:Lcom/google/vr/sdk/widgets/video/deps/dl;

.field private k:[I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/vr/sdk/widgets/video/deps/dv;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJI)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->k:[I

    aget p1, v0, p1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dl;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->j:Lcom/google/vr/sdk/widgets/video/deps/dl;

    .line 4
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/dl;->a()[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->k:[I

    return-void
.end method

.method protected final d()Lcom/google/vr/sdk/widgets/video/deps/dl;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->j:Lcom/google/vr/sdk/widgets/video/deps/dl;

    return-object v0
.end method
