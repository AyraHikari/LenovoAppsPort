.class public final Lcom/google/vr/sdk/widgets/video/deps/fj;
.super Ljava/lang/Object;
.source "TrackSelectionArray.java"


# instance fields
.field public final a:I

.field private final b:[Lcom/google/vr/sdk/widgets/video/deps/fi;

.field private c:I


# direct methods
.method public varargs constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/fi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->b:[Lcom/google/vr/sdk/widgets/video/deps/fi;

    .line 3
    array-length p1, p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->a:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/fi;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->b:[Lcom/google/vr/sdk/widgets/video/deps/fi;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a()[Lcom/google/vr/sdk/widgets/video/deps/fi;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->b:[Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-virtual {v0}, [Lcom/google/vr/sdk/widgets/video/deps/fi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/vr/sdk/widgets/video/deps/fi;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fj;

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->b:[Lcom/google/vr/sdk/widgets/video/deps/fi;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/fj;->b:[Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 7
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->c:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    .line 9
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->b:[Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->c:I

    .line 11
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->c:I

    return v0
.end method
