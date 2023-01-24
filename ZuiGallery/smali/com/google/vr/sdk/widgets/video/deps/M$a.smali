.class final Lcom/google/vr/sdk/widgets/video/deps/M$a;
.super Ljava/lang/Object;
.source "SimpleDecoderAudioRenderer.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/H$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/M;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/M;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M$a;->a:Lcom/google/vr/sdk/widgets/video/deps/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/M;Lcom/google/vr/sdk/widgets/video/deps/M$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/M$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/M;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M$a;->a:Lcom/google/vr/sdk/widgets/video/deps/M;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/M;->a()V

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M$a;->a:Lcom/google/vr/sdk/widgets/video/deps/M;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/M;->a(Lcom/google/vr/sdk/widgets/video/deps/M;Z)Z

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M$a;->a:Lcom/google/vr/sdk/widgets/video/deps/M;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/M;->a(Lcom/google/vr/sdk/widgets/video/deps/M;)Lcom/google/vr/sdk/widgets/video/deps/G$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a(I)V

    .line 3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M$a;->a:Lcom/google/vr/sdk/widgets/video/deps/M;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/M;->a(I)V

    return-void
.end method

.method public a(IJJ)V
    .locals 8

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M$a;->a:Lcom/google/vr/sdk/widgets/video/deps/M;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/M;->a(Lcom/google/vr/sdk/widgets/video/deps/M;)Lcom/google/vr/sdk/widgets/video/deps/G$a;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a(IJJ)V

    .line 9
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M$a;->a:Lcom/google/vr/sdk/widgets/video/deps/M;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/M;->a(IJJ)V

    return-void
.end method
