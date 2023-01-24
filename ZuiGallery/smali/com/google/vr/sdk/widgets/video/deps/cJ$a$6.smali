.class Lcom/google/vr/sdk/widgets/video/deps/cJ$a$6;
.super Ljava/lang/Object;
.source "AdaptiveMediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(ILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/vr/sdk/widgets/video/deps/m;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:J

.field final synthetic f:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;ILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$6;->f:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$6;->a:I

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$6;->b:Lcom/google/vr/sdk/widgets/video/deps/m;

    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$6;->c:I

    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$6;->d:Ljava/lang/Object;

    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$6;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$6;->f:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;)Lcom/google/vr/sdk/widgets/video/deps/cJ;

    move-result-object v1

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$6;->a:I

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$6;->b:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$6;->c:I

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$6;->d:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$6;->f:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$6;->e:J

    .line 3
    invoke-static {v0, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;J)J

    move-result-wide v6

    .line 4
    invoke-interface/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/cJ;->onDownstreamFormatChanged(ILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;J)V

    return-void
.end method
