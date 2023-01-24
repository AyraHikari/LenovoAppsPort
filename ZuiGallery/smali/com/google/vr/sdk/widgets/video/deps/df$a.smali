.class final Lcom/google/vr/sdk/widgets/video/deps/df$a;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/db;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# static fields
.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/df;

.field private e:I


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/df;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/df$a;->a:Lcom/google/vr/sdk/widgets/video/deps/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/df;Lcom/google/vr/sdk/widgets/video/deps/df$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/df$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/df;)V

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 24
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/df$a;->e:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 25
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/df$a;->e:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I
    .locals 6

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df$a;->e:I

    const/4 v1, -0x4

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 p1, 0x4

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/T;->b(I)V

    return v1

    :cond_0
    const/4 v3, 0x1

    if-nez p3, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    if-ne v0, v3, :cond_2

    move p3, v3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 15
    :goto_0
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 16
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/df$a;->a:Lcom/google/vr/sdk/widgets/video/deps/df;

    iget-boolean p3, p3, Lcom/google/vr/sdk/widgets/video/deps/df;->c:Z

    if-nez p3, :cond_3

    const/4 p1, -0x3

    return p1

    :cond_3
    const-wide/16 v4, 0x0

    .line 18
    iput-wide v4, p2, Lcom/google/vr/sdk/widgets/video/deps/T;->f:J

    .line 19
    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/T;->b(I)V

    .line 20
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/df$a;->a:Lcom/google/vr/sdk/widgets/video/deps/df;

    iget p3, p3, Lcom/google/vr/sdk/widgets/video/deps/df;->e:I

    invoke-virtual {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/T;->e(I)V

    .line 21
    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/df$a;->a:Lcom/google/vr/sdk/widgets/video/deps/df;

    iget-object p3, p3, Lcom/google/vr/sdk/widgets/video/deps/df;->d:[B

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df$a;->a:Lcom/google/vr/sdk/widgets/video/deps/df;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/df;->e:I

    invoke-virtual {p2, p3, p1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 22
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/df$a;->e:I

    return v1

    .line 12
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/df$a;->a:Lcom/google/vr/sdk/widgets/video/deps/df;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/df;->b:Lcom/google/vr/sdk/widgets/video/deps/m;

    iput-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/n;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 13
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/df$a;->e:I

    const/4 p1, -0x5

    return p1
.end method

.method public b(J)V
    .locals 0

    .line 2
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/df$a;->e:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/df$a;->e:I

    :cond_0
    return-void
.end method

.method public b_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df$a;->a:Lcom/google/vr/sdk/widgets/video/deps/df;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/df;->a:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->d()V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df$a;->a:Lcom/google/vr/sdk/widgets/video/deps/df;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/df;->c:Z

    return v0
.end method
