.class public final Lcom/google/vr/sdk/widgets/video/deps/ff;
.super Lcom/google/vr/sdk/widgets/video/deps/fd;
.source "FixedTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ff$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dh;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ff;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dh;IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dh;IILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fd;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)V

    .line 4
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ff;->a:I

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ff;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public b()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ff;->a:I

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ff;->b:Ljava/lang/Object;

    return-object v0
.end method
