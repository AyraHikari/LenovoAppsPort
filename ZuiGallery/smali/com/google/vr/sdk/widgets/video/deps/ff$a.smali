.class public final Lcom/google/vr/sdk/widgets/video/deps/ff$a;
.super Ljava/lang/Object;
.source "FixedTrackSelection.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ff$a;->a:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ff$a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ff$a;->a:I

    .line 7
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ff$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)Lcom/google/vr/sdk/widgets/video/deps/ff;
    .locals 3

    .line 9
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 10
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ff;

    aget p2, p2, v1

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ff$a;->a:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ff$a;->b:Ljava/lang/Object;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ff;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dh;IILjava/lang/Object;)V

    return-object v0
.end method

.method public synthetic b(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)Lcom/google/vr/sdk/widgets/video/deps/fi;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ff$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)Lcom/google/vr/sdk/widgets/video/deps/ff;

    move-result-object p1

    return-object p1
.end method
