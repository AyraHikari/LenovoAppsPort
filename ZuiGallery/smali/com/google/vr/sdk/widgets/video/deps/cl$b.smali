.class final Lcom/google/vr/sdk/widgets/video/deps/cl$b;
.super Ljava/lang/Object;
.source "Id3Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:I


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$b;->a:I

    .line 3
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$b;->b:Z

    .line 4
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$b;->c:I

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cl$b;)I
    .locals 0

    .line 6
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$b;->a:I

    return p0
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/cl$b;)I
    .locals 0

    .line 7
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$b;->c:I

    return p0
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/cl$b;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cl$b;->b:Z

    return p0
.end method
