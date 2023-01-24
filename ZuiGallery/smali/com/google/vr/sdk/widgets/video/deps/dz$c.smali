.class final Lcom/google/vr/sdk/widgets/video/deps/dz$c;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fJ$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/fJ$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/fL<",
        "Lcom/google/vr/sdk/widgets/video/deps/dF;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/dz;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz$c;->a:Lcom/google/vr/sdk/widgets/video/deps/dz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dz;Lcom/google/vr/sdk/widgets/video/deps/dz$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dz$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dz;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJLjava/io/IOException;)I
    .locals 0

    .line 7
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fL;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/dz$c;->a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJLjava/io/IOException;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fL<",
            "Lcom/google/vr/sdk/widgets/video/deps/dF;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz$c;->a:Lcom/google/vr/sdk/widgets/video/deps/dz;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJ)V
    .locals 0

    .line 9
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fL;

    invoke-virtual/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/dz$c;->a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJZ)V
    .locals 0

    .line 8
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fL;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/dz$c;->a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJZ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fL<",
            "Lcom/google/vr/sdk/widgets/video/deps/dF;",
            ">;JJ)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz$c;->a:Lcom/google/vr/sdk/widgets/video/deps/dz;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fL<",
            "Lcom/google/vr/sdk/widgets/video/deps/dF;",
            ">;JJZ)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz$c;->a:Lcom/google/vr/sdk/widgets/video/deps/dz;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dz;->c(Lcom/google/vr/sdk/widgets/video/deps/fL;JJ)V

    return-void
.end method
