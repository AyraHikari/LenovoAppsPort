.class public final Lcom/google/vr/sdk/widgets/video/deps/k$b;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

.field public final b:J

.field public final c:J

.field public volatile d:J

.field public volatile e:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;-><init>(I)V

    invoke-direct {p0, v0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;J)V
    .locals 6

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    .line 7
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->b:J

    .line 8
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->c:J

    .line 9
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->d:J

    .line 10
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->e:J

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/k$b;
    .locals 7

    .line 12
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a(I)Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->b:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->c:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJ)V

    .line 13
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->d:J

    iput-wide v0, v6, Lcom/google/vr/sdk/widgets/video/deps/k$b;->d:J

    .line 14
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->e:J

    iput-wide v0, v6, Lcom/google/vr/sdk/widgets/video/deps/k$b;->e:J

    return-object v6
.end method
