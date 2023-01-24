.class public abstract Lcom/google/vr/sdk/widgets/video/deps/dM;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/dM$d;,
        Lcom/google/vr/sdk/widgets/video/deps/dM$c;,
        Lcom/google/vr/sdk/widgets/video/deps/dM$b;,
        Lcom/google/vr/sdk/widgets/video/deps/dM$a;,
        Lcom/google/vr/sdk/widgets/video/deps/dM$e;
    }
.end annotation


# instance fields
.field final a:Lcom/google/vr/sdk/widgets/video/deps/dJ;

.field final b:J

.field final c:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dM;->a:Lcom/google/vr/sdk/widgets/video/deps/dJ;

    .line 3
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dM;->b:J

    .line 4
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dM;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 6

    .line 7
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dM;->c:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dM;->b:J

    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dK;)Lcom/google/vr/sdk/widgets/video/deps/dJ;
    .locals 0

    .line 6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dM;->a:Lcom/google/vr/sdk/widgets/video/deps/dJ;

    return-object p1
.end method
