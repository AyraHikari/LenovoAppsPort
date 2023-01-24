.class final Lcom/google/vr/sdk/widgets/video/deps/bR$a;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/bR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0x8


# instance fields
.field public final b:I

.field public final c:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->b:I

    .line 3
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bR$a;->c:J

    return-void
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/bR$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 5
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-interface {p0, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->c([BII)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 7
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p0

    .line 8
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->q()J

    move-result-wide v0

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bR$a;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bR$a;-><init>(IJ)V

    return-object p1
.end method
