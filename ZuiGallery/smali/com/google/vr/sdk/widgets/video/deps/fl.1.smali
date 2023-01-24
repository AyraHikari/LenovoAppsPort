.class public final Lcom/google/vr/sdk/widgets/video/deps/fl;
.super Ljava/lang/Object;
.source "TrackSelectorResult.java"


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/di;

.field public final b:Lcom/google/vr/sdk/widgets/video/deps/fj;

.field public final c:Ljava/lang/Object;

.field public final d:[Lcom/google/vr/sdk/widgets/video/deps/w;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/di;Lcom/google/vr/sdk/widgets/video/deps/fj;Ljava/lang/Object;[Lcom/google/vr/sdk/widgets/video/deps/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fl;->a:Lcom/google/vr/sdk/widgets/video/deps/di;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fl;->b:Lcom/google/vr/sdk/widgets/video/deps/fj;

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fl;->c:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fl;->d:[Lcom/google/vr/sdk/widgets/video/deps/w;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/fl;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fl;->b:Lcom/google/vr/sdk/widgets/video/deps/fj;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/fj;->a:I

    if-ge v1, v2, :cond_2

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/fl;->a(Lcom/google/vr/sdk/widgets/video/deps/fl;I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fl;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fl;->b:Lcom/google/vr/sdk/widgets/video/deps/fj;

    invoke-virtual {v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fj;->a(I)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v1

    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fl;->b:Lcom/google/vr/sdk/widgets/video/deps/fj;

    invoke-virtual {v2, p2}, Lcom/google/vr/sdk/widgets/video/deps/fj;->a(I)Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fl;->d:[Lcom/google/vr/sdk/widgets/video/deps/w;

    aget-object v1, v1, p2

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/fl;->d:[Lcom/google/vr/sdk/widgets/video/deps/w;

    aget-object p1, p1, p2

    .line 17
    invoke-static {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
