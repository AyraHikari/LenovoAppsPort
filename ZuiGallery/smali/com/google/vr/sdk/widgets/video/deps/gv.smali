.class public final Lcom/google/vr/sdk/widgets/video/deps/gv;
.super Ljava/lang/Object;
.source "LongArray.java"


# static fields
.field private static final a:I = 0x20


# instance fields
.field private b:I

.field private c:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gv;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->c:[J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->b:I

    return v0
.end method

.method public a(I)J
    .locals 4

    if-ltz p1, :cond_0

    .line 10
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->b:I

    if-ge p1, v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->c:[J

    aget-wide v0, v0, p1

    return-wide v0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->b:I

    const/16 v2, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid index "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size is "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(J)V
    .locals 3

    .line 6
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->b:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->c:[J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    .line 7
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->c:[J

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->c:[J

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->b:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public b()[J
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->c:[J

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->b:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method
