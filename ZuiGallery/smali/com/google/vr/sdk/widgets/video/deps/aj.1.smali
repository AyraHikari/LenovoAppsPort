.class public final Lcom/google/vr/sdk/widgets/video/deps/aj;
.super Ljava/lang/Object;
.source "LocalMediaDrmCallback.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ak;


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->a:[B

    return-void
.end method


# virtual methods
.method public a(Ljava/util/UUID;Lcom/google/vr/sdk/widgets/video/deps/ae$a;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->a:[B

    return-object p1
.end method

.method public a(Ljava/util/UUID;Lcom/google/vr/sdk/widgets/video/deps/ae$c;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
