.class final Lcom/google/vr/sdk/widgets/video/deps/H$g;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/s;

.field private final b:J

.field private final c:J


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/s;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H$g;->a:Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 3
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/H$g;->b:J

    .line 4
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/H$g;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/s;JJLcom/google/vr/sdk/widgets/video/deps/H$1;)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/H$g;-><init>(Lcom/google/vr/sdk/widgets/video/deps/s;JJ)V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/H$g;)Lcom/google/vr/sdk/widgets/video/deps/s;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$g;->a:Lcom/google/vr/sdk/widgets/video/deps/s;

    return-object p0
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/H$g;)J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$g;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/H$g;)J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$g;->b:J

    return-wide v0
.end method
