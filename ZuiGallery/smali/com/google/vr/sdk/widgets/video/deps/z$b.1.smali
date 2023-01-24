.class public final Lcom/google/vr/sdk/widgets/video/deps/z$b;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:J

.field public c:J

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:J

.field public i:J

.field public j:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->h:J

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/vr/sdk/widgets/video/deps/z$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->a:Ljava/lang/Object;

    .line 3
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->b:J

    .line 4
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->c:J

    .line 5
    iput-boolean p6, p0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->d:Z

    .line 6
    iput-boolean p7, p0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->e:Z

    .line 7
    iput-wide p8, p0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->h:J

    .line 8
    iput-wide p10, p0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->i:J

    .line 9
    iput p12, p0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->f:I

    .line 10
    iput p13, p0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->g:I

    .line 11
    iput-wide p14, p0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->j:J

    return-object p0
.end method

.method public b()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->h:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->i:J

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->i:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->j:J

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->j:J

    return-wide v0
.end method
