.class final Lcom/google/vr/sdk/widgets/video/deps/cP$d;
.super Ljava/lang/Object;
.source "DynamicConcatenatingMediaSource.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/vr/sdk/widgets/video/deps/cP$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/cW;

.field public final b:Ljava/lang/Object;

.field public c:Lcom/google/vr/sdk/widgets/video/deps/cP$c;

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cW;Lcom/google/vr/sdk/widgets/video/deps/cP$c;IILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->c:Lcom/google/vr/sdk/widgets/video/deps/cP$c;

    .line 4
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->d:I

    .line 5
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->e:I

    .line 6
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cP$d;)I
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->e:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->e:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->a(Lcom/google/vr/sdk/widgets/video/deps/cP$d;)I

    move-result p1

    return p1
.end method
