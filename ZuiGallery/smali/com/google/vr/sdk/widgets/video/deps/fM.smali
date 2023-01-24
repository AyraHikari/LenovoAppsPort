.class public final Lcom/google/vr/sdk/widgets/video/deps/fM;
.super Ljava/lang/Object;
.source "PriorityDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/gD;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/gD;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fv;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fM;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 3
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/gD;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fM;->b:Lcom/google/vr/sdk/widgets/video/deps/gD;

    .line 4
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fM;->c:I

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fM;->b:Lcom/google/vr/sdk/widgets/video/deps/gD;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fM;->c:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gD;->d(I)V

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fM;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a([BII)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fM;->b:Lcom/google/vr/sdk/widgets/video/deps/gD;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fM;->c:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gD;->d(I)V

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fM;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fM;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a()V

    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fM;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->b()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
