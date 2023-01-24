.class final Lcom/google/vr/sdk/widgets/video/deps/dl;
.super Ljava/lang/Object;
.source "BaseMediaChunkOutput.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/dn$b;


# static fields
.field private static final a:Ljava/lang/String; = "BaseMediaChunkOutput"


# instance fields
.field private final b:[I

.field private final c:[Lcom/google/vr/sdk/widgets/video/deps/da;


# direct methods
.method public constructor <init>([I[Lcom/google/vr/sdk/widgets/video/deps/da;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->b:[I

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->c:[Lcom/google/vr/sdk/widgets/video/deps/da;

    return-void
.end method


# virtual methods
.method public a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;
    .locals 2

    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->b:[I

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 6
    aget v0, v0, p1

    if-ne p2, v0, :cond_0

    .line 7
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->c:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object p1, p2, p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x24

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unmatched track of type: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMediaChunkOutput"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ar;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ar;-><init>()V

    return-object p1
.end method

.method public a(J)V
    .locals 4

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->c:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 19
    invoke-virtual {v3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a()[I
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->c:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dl;->c:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 13
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 14
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/da;->c()I

    move-result v2

    aput v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
