.class public final Lcom/google/vr/sdk/widgets/video/deps/dU$b;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/google/vr/sdk/widgets/video/deps/dm;

.field public b:Z

.field public c:Lcom/google/vr/sdk/widgets/video/deps/eg$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/dU$b;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dm;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dU$b;->b:Z

    .line 6
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU$b;->c:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    return-void
.end method
