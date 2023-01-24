.class final Lcom/google/vr/sdk/widgets/video/deps/eY$b;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/eY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/vr/sdk/widgets/video/deps/eY$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/vr/sdk/widgets/video/deps/eW;


# direct methods
.method public constructor <init>(ILcom/google/vr/sdk/widgets/video/deps/eW;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eY$b;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eY$b;->b:Lcom/google/vr/sdk/widgets/video/deps/eW;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/eY$b;)I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eY$b;->a:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/eY$b;->a:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/eY$b;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eY$b;->a(Lcom/google/vr/sdk/widgets/video/deps/eY$b;)I

    move-result p1

    return p1
.end method
