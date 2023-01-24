.class public final Lcom/google/vr/sdk/widgets/video/deps/o;
.super Ljava/lang/IllegalStateException;
.source "IllegalSeekPositionException.java"


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/z;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/z;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/o;->a:Lcom/google/vr/sdk/widgets/video/deps/z;

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/o;->b:I

    .line 4
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/o;->c:J

    return-void
.end method
