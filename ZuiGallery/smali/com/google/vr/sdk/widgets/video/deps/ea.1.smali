.class final Lcom/google/vr/sdk/widgets/video/deps/ea;
.super Ljava/lang/Object;
.source "HlsSampleStream.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/db;


# instance fields
.field public final a:I

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/eb;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/eb;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ea;->b:Lcom/google/vr/sdk/widgets/video/deps/eb;

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ea;->a:I

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ea;->b:Lcom/google/vr/sdk/widgets/video/deps/eb;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ea;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(IJ)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ea;->b:Lcom/google/vr/sdk/widgets/video/deps/eb;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ea;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(ILcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I

    move-result p1

    return p1
.end method

.method public b_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ea;->b:Lcom/google/vr/sdk/widgets/video/deps/eb;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->i()V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ea;->b:Lcom/google/vr/sdk/widgets/video/deps/eb;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ea;->a:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(I)Z

    move-result v0

    return v0
.end method
