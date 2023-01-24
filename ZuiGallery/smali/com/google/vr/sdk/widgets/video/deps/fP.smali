.class public final Lcom/google/vr/sdk/widgets/video/deps/fP;
.super Ljava/lang/Object;
.source "TeeDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/fu;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fv;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fP;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 3
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fu;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fP;->b:Lcom/google/vr/sdk/widgets/video/deps/fu;

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

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fP;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a([BII)I

    move-result p3

    if-lez p3, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fP;->b:Lcom/google/vr/sdk/widgets/video/deps/fu;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fu;->a([BII)V

    :cond_0
    return p3
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fP;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J

    move-result-wide v11

    .line 6
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    cmp-long v0, v11, v2

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    iget-wide v5, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    iget-object v9, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->h:Ljava/lang/String;

    iget v10, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->i:I

    move-object v1, v0

    move-wide v7, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    move-object p1, v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fP;->b:Lcom/google/vr/sdk/widgets/video/deps/fu;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fu;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)V

    return-wide v11
.end method

.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fP;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fP;->b:Lcom/google/vr/sdk/widgets/video/deps/fu;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fu;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 18
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fP;->b:Lcom/google/vr/sdk/widgets/video/deps/fu;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/fu;->a()V

    throw v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fP;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->b()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
