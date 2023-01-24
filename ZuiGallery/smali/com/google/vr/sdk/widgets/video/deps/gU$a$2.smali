.class Lcom/google/vr/sdk/widgets/video/deps/gU$a$2;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/gU$a;->a(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/google/vr/sdk/widgets/video/deps/gU$a;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/gU$a;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gU$a$2;->d:Lcom/google/vr/sdk/widgets/video/deps/gU$a;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gU$a$2;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gU$a$2;->b:J

    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/gU$a$2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gU$a$2;->d:Lcom/google/vr/sdk/widgets/video/deps/gU$a;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gU$a;->a(Lcom/google/vr/sdk/widgets/video/deps/gU$a;)Lcom/google/vr/sdk/widgets/video/deps/gU;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gU$a$2;->a:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gU$a$2;->b:J

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gU$a$2;->c:J

    invoke-interface/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/gU;->a(Ljava/lang/String;JJ)V

    return-void
.end method
