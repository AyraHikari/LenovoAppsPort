.class public final Lcom/google/vr/sdk/widgets/video/deps/fh$a;
.super Ljava/lang/Object;
.source "RandomTrackSelection.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/fh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fh$a;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/Random;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fh$a;->a:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)Lcom/google/vr/sdk/widgets/video/deps/fh;
    .locals 2

    .line 7
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fh;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fh$a;->a:Ljava/util/Random;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/fh;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[ILjava/util/Random;)V

    return-object v0
.end method

.method public synthetic b(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)Lcom/google/vr/sdk/widgets/video/deps/fi;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fh$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)Lcom/google/vr/sdk/widgets/video/deps/fh;

    move-result-object p1

    return-object p1
.end method
