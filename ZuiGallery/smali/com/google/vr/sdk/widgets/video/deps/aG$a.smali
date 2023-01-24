.class final Lcom/google/vr/sdk/widgets/video/deps/aG$a;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/aG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aG$a;->a:I

    .line 3
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aG$a;->b:J

    return-void
.end method

.method synthetic constructor <init>(IJLcom/google/vr/sdk/widgets/video/deps/aG$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/aG$a;-><init>(IJ)V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/aG$a;)J
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG$a;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/aG$a;)I
    .locals 0

    .line 6
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/aG$a;->a:I

    return p0
.end method
