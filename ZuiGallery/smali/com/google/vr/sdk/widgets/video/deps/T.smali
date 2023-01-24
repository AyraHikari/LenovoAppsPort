.class public Lcom/google/vr/sdk/widgets/video/deps/T;
.super Lcom/google/vr/sdk/widgets/video/deps/P;
.source "DecoderInputBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/T$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field public final d:Lcom/google/vr/sdk/widgets/video/deps/Q;

.field public e:Ljava/nio/ByteBuffer;

.field public f:J

.field private final g:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/P;-><init>()V

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/Q;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/Q;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/T;->d:Lcom/google/vr/sdk/widgets/video/deps/Q;

    .line 4
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/T;->g:I

    return-void
.end method

.method public static e()Lcom/google/vr/sdk/widgets/video/deps/T;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/T;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/T;-><init>(I)V

    return-object v0
.end method

.method private f(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 29
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/T;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 30
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 32
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 34
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Buffer too small ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/P;->a()V

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/T;->f(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr p1, v1

    if-lt v0, p1, :cond_1

    return-void

    .line 14
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/T;->f(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-lez v1, :cond_2

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 19
    :cond_2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final f()Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/T;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/T;->d(I)Z

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method
