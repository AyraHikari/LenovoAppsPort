.class final Lcom/google/vr/sdk/widgets/video/deps/bh;
.super Lcom/google/vr/sdk/widgets/video/deps/bn;
.source "FlacReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bh$a;
    }
.end annotation


# static fields
.field private static final a:B = -0x1t

.field private static final b:B = 0x3t

.field private static final c:I = 0x4


# instance fields
.field private d:Lcom/google/vr/sdk/widgets/video/deps/gt;

.field private e:Lcom/google/vr/sdk/widgets/video/deps/bh$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bn;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/bh;)Lcom/google/vr/sdk/widgets/video/deps/gt;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->d:Lcom/google/vr/sdk/widgets/video/deps/gt;

    return-object p0
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a([B)Z
    .locals 2

    const/4 v0, 0x0

    .line 10
    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/gA;)I
    .locals 3

    .line 32
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x4

    shr-int/2addr v0, v2

    packed-switch v0, :pswitch_data_0

    const/4 p1, -0x1

    return p1

    :pswitch_0
    const/16 p1, 0x100

    add-int/lit8 v0, v0, -0x8

    :goto_0
    shl-int/2addr p1, v0

    return p1

    .line 36
    :pswitch_1
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 37
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->E()J

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v0

    :goto_1
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    add-int/lit8 v0, v0, 0x1

    return v0

    :pswitch_2
    const/16 p1, 0x240

    sub-int/2addr v0, v1

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xc0

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->d:Lcom/google/vr/sdk/widgets/video/deps/gt;

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->e:Lcom/google/vr/sdk/widgets/video/deps/bh$a;

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/gA;JLcom/google/vr/sdk/widgets/video/deps/bn$a;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 14
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 15
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->d:Lcom/google/vr/sdk/widgets/video/deps/gt;

    if-nez v1, :cond_0

    .line 16
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/gt;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/gt;-><init>([BI)V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->d:Lcom/google/vr/sdk/widgets/video/deps/gt;

    const/16 p2, 0x9

    .line 17
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result p1

    invoke-static {v0, p2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p2, 0x4

    const/16 p3, -0x80

    .line 18
    aput-byte p3, p1, p2

    .line 19
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 20
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->d:Lcom/google/vr/sdk/widgets/video/deps/gt;

    .line 21
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gt;->b()I

    move-result v4

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->d:Lcom/google/vr/sdk/widgets/video/deps/gt;

    iget v5, p1, Lcom/google/vr/sdk/widgets/video/deps/gt;->f:I

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->d:Lcom/google/vr/sdk/widgets/video/deps/gt;

    iget v6, p1, Lcom/google/vr/sdk/widgets/video/deps/gt;->e:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v1, "audio/flac"

    .line 22
    invoke-static/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p1

    iput-object p1, p4, Lcom/google/vr/sdk/widgets/video/deps/bn$a;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 23
    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 24
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/bh$a;

    invoke-direct {p2, p0}, Lcom/google/vr/sdk/widgets/video/deps/bh$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bh;)V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->e:Lcom/google/vr/sdk/widgets/video/deps/bh$a;

    .line 25
    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/bh;->a([B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 27
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->e:Lcom/google/vr/sdk/widgets/video/deps/bh$a;

    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bh$a;->c(J)V

    .line 29
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bh;->e:Lcom/google/vr/sdk/widgets/video/deps/bh$a;

    iput-object p1, p4, Lcom/google/vr/sdk/widgets/video/deps/bn$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bl;

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected b(Lcom/google/vr/sdk/widgets/video/deps/gA;)J
    .locals 2

    .line 11
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/bh;->a([B)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bh;->c(Lcom/google/vr/sdk/widgets/video/deps/gA;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method
