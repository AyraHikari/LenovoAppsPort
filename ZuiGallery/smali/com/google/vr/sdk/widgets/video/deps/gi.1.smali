.class public final Lcom/google/vr/sdk/widgets/video/deps/gi;
.super Ljava/lang/Object;
.source "AesCipherDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private final b:[B

.field private c:Lcom/google/vr/sdk/widgets/video/deps/gj;


# direct methods
.method public constructor <init>([BLcom/google/vr/sdk/widgets/video/deps/fv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 3
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->b:[B

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a([BII)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    return v0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->c:Lcom/google/vr/sdk/widgets/video/deps/gj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gj;->a([BII)V

    return p3
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J

    move-result-wide v0

    .line 6
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gk;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 7
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/gj;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->b:[B

    iget-wide v8, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    const/4 v4, 0x2

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/gj;-><init>(I[BJJ)V

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->c:Lcom/google/vr/sdk/widgets/video/deps/gj;

    return-wide v0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->c:Lcom/google/vr/sdk/widgets/video/deps/gj;

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a()V

    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->b()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
