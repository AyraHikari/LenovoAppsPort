.class final Lcom/google/vr/sdk/widgets/video/deps/cR$d;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/db;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/cR;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cR;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$d;->a:Lcom/google/vr/sdk/widgets/video/deps/cR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$d;->b:I

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cR$d;)I
    .locals 0

    .line 9
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$d;->b:I

    return p0
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$d;->a:Lcom/google/vr/sdk/widgets/video/deps/cR;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$d;->b:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cR;->a(IJ)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$d;->a:Lcom/google/vr/sdk/widgets/video/deps/cR;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$d;->b:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cR;->a(ILcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I

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

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$d;->a:Lcom/google/vr/sdk/widgets/video/deps/cR;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cR;->h()V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$d;->a:Lcom/google/vr/sdk/widgets/video/deps/cR;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cR$d;->b:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cR;->a(I)Z

    move-result v0

    return v0
.end method
