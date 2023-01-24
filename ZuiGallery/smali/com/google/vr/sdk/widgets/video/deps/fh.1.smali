.class public final Lcom/google/vr/sdk/widgets/video/deps/fh;
.super Lcom/google/vr/sdk/widgets/video/deps/fd;
.source "RandomTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fh$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Random;

.field private b:I


# direct methods
.method public varargs constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fd;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)V

    .line 2
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->a:Ljava/util/Random;

    .line 3
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->g:I

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[IJ)V
    .locals 1

    .line 5
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p3, p4}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/fh;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[ILjava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[ILjava/util/Random;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fd;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)V

    .line 8
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->a:Ljava/util/Random;

    .line 9
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->g:I

    invoke-virtual {p3, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->b:I

    return v0
.end method

.method public a(J)V
    .locals 4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 13
    :goto_0
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->g:I

    if-ge v1, v3, :cond_1

    .line 14
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fh;->b(IJ)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->a:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->b:I

    .line 18
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->g:I

    if-eq v2, v1, :cond_4

    move v1, v0

    .line 20
    :goto_1
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->g:I

    if-ge v0, v2, :cond_4

    .line 21
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fh;->b(IJ)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->b:I

    add-int/lit8 v3, v1, 0x1

    if-ne v2, v1, :cond_2

    .line 22
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fh;->b:I

    return-void

    :cond_2
    move v1, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
