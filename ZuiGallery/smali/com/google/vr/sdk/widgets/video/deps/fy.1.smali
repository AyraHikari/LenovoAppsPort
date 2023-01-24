.class public final Lcom/google/vr/sdk/widgets/video/deps/fy;
.super Ljava/lang/Object;
.source "DataSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fy$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2


# instance fields
.field public final c:Landroid/net/Uri;

.field public final d:[B

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Ljava/lang/String;

.field public final i:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 8

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .locals 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 9
    invoke-direct/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    .line 5
    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;I)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 7
    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .locals 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 12
    :goto_0
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    cmp-long v2, p5, v0

    if-ltz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    .line 13
    :goto_1
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    cmp-long v0, p7, v0

    if-gtz v0, :cond_3

    const-wide/16 v0, -0x1

    cmp-long v0, p7, v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 14
    :cond_3
    :goto_2
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 15
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    .line 16
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->d:[B

    .line 17
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    .line 18
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    .line 19
    iput-wide p7, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    .line 20
    iput-object p9, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->h:Ljava/lang/String;

    .line 21
    iput p10, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->i:I

    return-void
.end method


# virtual methods
.method public a(J)Lcom/google/vr/sdk/widgets/video/deps/fy;
    .locals 5

    .line 25
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sub-long v2, v0, p1

    :goto_0
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/fy;->a(JJ)Lcom/google/vr/sdk/widgets/video/deps/fy;

    move-result-object p1

    return-object p1
.end method

.method public a(JJ)Lcom/google/vr/sdk/widgets/video/deps/fy;
    .locals 14

    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 26
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    cmp-long v1, v1, p3

    if-nez v1, :cond_0

    return-object v0

    .line 28
    :cond_0
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->d:[B

    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    add-long v6, v2, p1

    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    add-long v8, v2, p1

    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->h:Ljava/lang/String;

    iget v13, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->i:I

    move-object v3, v1

    move-wide/from16 v10, p3

    invoke-direct/range {v3 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    return-object v1
.end method

.method public a(I)Z
    .locals 1

    .line 23
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->i:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->d:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->h:Ljava/lang/String;

    iget v9, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->i:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x5d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "DataSpec["

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
