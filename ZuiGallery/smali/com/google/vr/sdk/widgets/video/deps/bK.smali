.class public final Lcom/google/vr/sdk/widgets/video/deps/bK;
.super Ljava/lang/Object;
.source "SectionReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bO;


# static fields
.field private static final a:I = 0x3

.field private static final b:I = 0x20

.field private static final c:I = 0x1002


# instance fields
.field private final d:Lcom/google/vr/sdk/widgets/video/deps/bJ;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/bJ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->d:Lcom/google/vr/sdk/widgets/video/deps/bJ;

    .line 3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->i:Z

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;Z)V
    .locals 7

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 14
    :goto_0
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->i:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    return-void

    .line 17
    :cond_1
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->i:Z

    .line 18
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 19
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->g:I

    .line 20
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result p2

    if-lez p2, :cond_8

    .line 21
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ge p2, v2, :cond_5

    if-nez p2, :cond_3

    .line 23
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p2

    .line 24
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    const/16 v4, 0xff

    if-ne p2, v4, :cond_3

    .line 26
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->i:Z

    return-void

    .line 28
    :cond_3
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result p2

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->g:I

    rsub-int/lit8 v4, v4, 0x3

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 29
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->g:I

    invoke-virtual {p1, v4, v5, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 30
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->g:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->g:I

    if-ne v4, v2, :cond_2

    .line 32
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(I)V

    .line 33
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 34
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p2

    .line 35
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v4

    and-int/lit16 v5, p2, 0x80

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    .line 36
    :goto_2
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->h:Z

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v4

    add-int/2addr p2, v2

    .line 37
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->f:I

    .line 38
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->e()I

    move-result p2

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->f:I

    if-ge p2, v1, :cond_2

    .line 39
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 40
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v4, 0x1002

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->f:I

    array-length v6, p2

    mul-int/lit8 v6, v6, 0x2

    .line 41
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 42
    invoke-virtual {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(I)V

    .line 43
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 45
    :cond_5
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result p2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->f:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->g:I

    sub-int/2addr v2, v4

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 46
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->g:I

    invoke-virtual {p1, v2, v4, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 47
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->g:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->g:I

    .line 48
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->f:I

    if-ne v2, p2, :cond_2

    .line 49
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->h:Z

    if-eqz v2, :cond_7

    .line 50
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->f:I

    invoke-static {p2, v3, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a([BIII)I

    move-result p2

    if-eqz p2, :cond_6

    .line 51
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->i:Z

    return-void

    .line 53
    :cond_6
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->f:I

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(I)V

    goto :goto_3

    .line 54
    :cond_7
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(I)V

    .line 55
    :goto_3
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->d:Lcom/google/vr/sdk/widgets/video/deps/bJ;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-interface {p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/bJ;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    .line 56
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->g:I

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gJ;Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->d:Lcom/google/vr/sdk/widgets/video/deps/bJ;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bJ;->a(Lcom/google/vr/sdk/widgets/video/deps/gJ;Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bK;->i:Z

    return-void
.end method
