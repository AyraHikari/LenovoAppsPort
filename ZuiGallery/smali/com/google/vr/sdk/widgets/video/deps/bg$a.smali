.class Lcom/google/vr/sdk/widgets/video/deps/bg$a;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/az;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/bg;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/bg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/bg;Lcom/google/vr/sdk/widgets/video/deps/bg$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bg$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bg;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bg;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/bg;->b(Lcom/google/vr/sdk/widgets/video/deps/bg;)Lcom/google/vr/sdk/widgets/video/deps/bn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bg;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/bg;->c(Lcom/google/vr/sdk/widgets/video/deps/bg;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)J
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bg;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/bg;->a(Lcom/google/vr/sdk/widgets/video/deps/bg;)J

    move-result-wide p1

    return-wide p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bg;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/bg;->b(Lcom/google/vr/sdk/widgets/video/deps/bg;)Lcom/google/vr/sdk/widgets/video/deps/bn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bn;->b(J)J

    move-result-wide v4

    .line 6
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg$a;->a:Lcom/google/vr/sdk/widgets/video/deps/bg;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/bg;->a(Lcom/google/vr/sdk/widgets/video/deps/bg;)J

    move-result-wide v2

    const-wide/16 v6, 0x7530

    invoke-static/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/bg;->a(Lcom/google/vr/sdk/widgets/video/deps/bg;JJJ)J

    move-result-wide p1

    return-wide p1
.end method
