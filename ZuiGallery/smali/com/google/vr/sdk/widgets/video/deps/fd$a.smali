.class final Lcom/google/vr/sdk/widgets/video/deps/fd$a;
.super Ljava/lang/Object;
.source "BaseTrackSelection.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/vr/sdk/widgets/video/deps/m;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fd$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fd$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/m;)I
    .locals 0

    .line 2
    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    sub-int/2addr p2, p1

    return p2
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/m;

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fd$a;->a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result p1

    return p1
.end method
