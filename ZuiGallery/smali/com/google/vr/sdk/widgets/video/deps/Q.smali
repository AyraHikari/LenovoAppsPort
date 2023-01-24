.class public final Lcom/google/vr/sdk/widgets/video/deps/Q;
.super Ljava/lang/Object;
.source "CryptoInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/Q$a;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field public g:I

.field public h:I

.field private final i:Landroid/media/MediaCodec$CryptoInfo;

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/Q$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Q;->b()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 3
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/Q$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->i:Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/Q$a;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/vr/sdk/widgets/video/deps/Q$1;)V

    move-object v1, v0

    :cond_1
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->j:Lcom/google/vr/sdk/widgets/video/deps/Q$a;

    return-void
.end method

.method private b()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1

    .line 17
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    return-object v0
.end method

.method private c()V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->f:I

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->d:[I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->e:[I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->b:[B

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->a:[B

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->c:I

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 24
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->j:Lcom/google/vr/sdk/widgets/video/deps/Q$a;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->g:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->h:I

    invoke-static {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/Q$a;->a(Lcom/google/vr/sdk/widgets/video/deps/Q$a;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->i:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public a(I[I[I[B[BIII)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->f:I

    .line 6
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->d:[I

    .line 7
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->e:[I

    .line 8
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->b:[B

    .line 9
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->a:[B

    .line 10
    iput p6, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->c:I

    .line 11
    iput p7, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->g:I

    .line 12
    iput p8, p0, Lcom/google/vr/sdk/widgets/video/deps/Q;->h:I

    .line 13
    sget p1, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Q;->c()V

    :cond_0
    return-void
.end method
