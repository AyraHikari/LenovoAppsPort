.class public final Lcom/google/vr/sdk/widgets/video/deps/fg$b;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/fg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/fi$a;

.field public final b:I

.field public final c:[I

.field public final d:I


# direct methods
.method public varargs constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fi$a;I[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$b;->a:Lcom/google/vr/sdk/widgets/video/deps/fi$a;

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$b;->b:I

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$b;->c:[I

    .line 5
    array-length p1, p3

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$b;->d:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/di;)Lcom/google/vr/sdk/widgets/video/deps/fi;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$b;->a:Lcom/google/vr/sdk/widgets/video/deps/fi$a;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$b;->b:I

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object p1

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$b;->c:[I

    invoke-interface {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/fi$a;->b(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Z
    .locals 5

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg$b;->c:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
