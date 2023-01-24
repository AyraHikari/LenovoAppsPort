.class public abstract Lcom/google/vr/sdk/widgets/video/deps/dm;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fJ$c;


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/fy;

.field public final b:I

.field public final c:Lcom/google/vr/sdk/widgets/video/deps/m;

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:J

.field public final g:J

.field protected final h:Lcom/google/vr/sdk/widgets/video/deps/fv;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;ILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fv;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dm;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 3
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fy;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dm;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    .line 4
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dm;->b:I

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dm;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 6
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/dm;->d:I

    .line 7
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/dm;->e:Ljava/lang/Object;

    .line 8
    iput-wide p7, p0, Lcom/google/vr/sdk/widgets/video/deps/dm;->f:J

    .line 9
    iput-wide p9, p0, Lcom/google/vr/sdk/widgets/video/deps/dm;->g:J

    return-void
.end method


# virtual methods
.method public final e()J
    .locals 4

    .line 11
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dm;->g:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dm;->f:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public abstract f()J
.end method
