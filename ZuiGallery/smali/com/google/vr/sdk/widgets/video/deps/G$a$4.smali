.class Lcom/google/vr/sdk/widgets/video/deps/G$a$4;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/G$a;->a(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/google/vr/sdk/widgets/video/deps/G$a;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/G$a;IJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$4;->d:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$4;->a:I

    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$4;->b:J

    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$4;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$4;->d:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a(Lcom/google/vr/sdk/widgets/video/deps/G$a;)Lcom/google/vr/sdk/widgets/video/deps/G;

    move-result-object v1

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$4;->a:I

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$4;->b:J

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/G$a$4;->c:J

    invoke-interface/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/G;->a(IJJ)V

    return-void
.end method
