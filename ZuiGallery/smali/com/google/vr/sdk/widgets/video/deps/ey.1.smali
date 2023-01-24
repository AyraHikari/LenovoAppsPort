.class final Lcom/google/vr/sdk/widgets/video/deps/ey;
.super Lcom/google/vr/sdk/widgets/video/deps/em;
.source "Cea708Cue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/vr/sdk/widgets/video/deps/em;",
        "Ljava/lang/Comparable<",
        "Lcom/google/vr/sdk/widgets/video/deps/ey;",
        ">;"
    }
.end annotation


# static fields
.field public static final t:I = -0x1


# instance fields
.field public final u:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/vr/sdk/widgets/video/deps/em;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    .line 2
    iput p11, p0, Lcom/google/vr/sdk/widgets/video/deps/ey;->u:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/ey;)I
    .locals 1

    .line 4
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ey;->u:I

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ey;->u:I

    if-ge p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ey;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ey;->a(Lcom/google/vr/sdk/widgets/video/deps/ey;)I

    move-result p1

    return p1
.end method
