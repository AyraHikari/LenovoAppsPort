.class final Lcom/google/vr/sdk/widgets/video/deps/aR$f;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/aR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aR$f;->a:I

    .line 3
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aR$f;->b:J

    .line 4
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/aR$f;->c:I

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/aR$f;)J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aR$f;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/aR$f;)I
    .locals 0

    .line 7
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/aR$f;->a:I

    return p0
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/aR$f;)I
    .locals 0

    .line 8
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/aR$f;->c:I

    return p0
.end method
