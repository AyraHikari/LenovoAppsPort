.class public final Lcom/google/vr/sdk/widgets/video/deps/bD;
.super Ljava/lang/Object;
.source "Id3Reader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bz;


# static fields
.field private static final a:Ljava/lang/String; = "Id3Reader"

.field private static final b:I = 0xa


# instance fields
.field private final c:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private d:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private e:Z

.field private f:J

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->c:Lcom/google/vr/sdk/widgets/video/deps/gA;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->e:Z

    return-void
.end method

.method public a(JZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 12
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->e:Z

    .line 13
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->f:J

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->g:I

    .line 15
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->h:I

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V
    .locals 3

    .line 6
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->a()V

    .line 7
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->b()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->d:Lcom/google/vr/sdk/widgets/video/deps/aA;

    .line 8
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "application/id3"

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p2, v0, v1, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 7

    .line 17
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    .line 20
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->h:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 22
    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v4

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->c:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->h:I

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->h:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    .line 24
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->c:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    const/16 v1, 0x49

    .line 25
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->c:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x44

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->c:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x33

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->c:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 26
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v4

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->c:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 31
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->c:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->w()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->g:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->e:Z

    return-void

    .line 32
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->g:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->h:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 33
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->d:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 34
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->h:I

    return-void
.end method

.method public b()V
    .locals 8

    .line 36
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->e:Z

    if-eqz v0, :cond_1

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->g:I

    if-eqz v5, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->h:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->d:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->f:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bD;->e:Z

    :cond_1
    :goto_0
    return-void
.end method
