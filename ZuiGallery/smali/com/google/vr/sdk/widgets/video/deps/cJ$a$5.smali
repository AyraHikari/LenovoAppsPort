.class Lcom/google/vr/sdk/widgets/video/deps/cJ$a$5;
.super Ljava/lang/Object;
.source "AdaptiveMediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;IJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$5;->d:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$5;->a:I

    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$5;->b:J

    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$5;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$5;->d:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;)Lcom/google/vr/sdk/widgets/video/deps/cJ;

    move-result-object v1

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$5;->a:I

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$5;->d:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$5;->b:J

    invoke-static {v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;J)J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$5;->d:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$5;->c:J

    .line 3
    invoke-static {v0, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;J)J

    move-result-wide v5

    .line 4
    invoke-interface/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/cJ;->onUpstreamDiscarded(IJJ)V

    return-void
.end method
