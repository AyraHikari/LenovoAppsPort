.class public final Lcom/google/vr/sdk/widgets/video/deps/fV;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fV$a;,
        Lcom/google/vr/sdk/widgets/video/deps/fV$b;
    }
.end annotation


# static fields
.field public static final a:J = 0x200000L

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x4


# instance fields
.field private final e:Lcom/google/vr/sdk/widgets/video/deps/fS;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/fV$a;

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private m:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private n:Z

.field private o:Landroid/net/Uri;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:J

.field private s:J

.field private t:Lcom/google/vr/sdk/widgets/video/deps/fY;

.field private u:Z

.field private v:Z

.field private w:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv;)V
    .locals 6

    const/4 v3, 0x0

    const-wide/32 v4, 0x200000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/fV;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv;I)V
    .locals 6

    const-wide/32 v4, 0x200000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/fV;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv;IJ)V
    .locals 7

    .line 5
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fG;

    invoke-direct {v3}, Lcom/google/vr/sdk/widgets/video/deps/fG;-><init>()V

    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/fT;

    invoke-direct {v4, p1, p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/fT;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/fV;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fu;ILcom/google/vr/sdk/widgets/video/deps/fV$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fu;ILcom/google/vr/sdk/widgets/video/deps/fV$a;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->e:Lcom/google/vr/sdk/widgets/video/deps/fS;

    .line 9
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->f:Lcom/google/vr/sdk/widgets/video/deps/fv;

    and-int/lit8 p1, p5, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 10
    :goto_0
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->j:Z

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, p3

    .line 11
    :goto_1
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->k:Z

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    move p3, v0

    .line 12
    :cond_2
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->l:Z

    .line 13
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    if-eqz p4, :cond_3

    .line 15
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fP;

    invoke-direct {p1, p2, p4}, Lcom/google/vr/sdk/widgets/video/deps/fP;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fu;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->g:Lcom/google/vr/sdk/widgets/video/deps/fv;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->g:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 17
    :goto_2
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->i:Lcom/google/vr/sdk/widgets/video/deps/fV$a;

    return-void
.end method

.method private a(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->g:Lcom/google/vr/sdk/widgets/video/deps/fv;

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->e:Lcom/google/vr/sdk/widgets/video/deps/fS;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->q:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fS;->c(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->f:Lcom/google/vr/sdk/widgets/video/deps/fv;

    if-eq v0, v1, :cond_0

    instance-of p1, p1, Lcom/google/vr/sdk/widgets/video/deps/fS$a;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->u:Z

    :cond_1
    return-void
.end method

.method private a(Z)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 67
    iget-boolean v0, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->v:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 69
    :cond_0
    iget-boolean v0, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->j:Z

    if-eqz v0, :cond_1

    .line 70
    :try_start_0
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->e:Lcom/google/vr/sdk/widgets/video/deps/fS;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->q:Ljava/lang/String;

    iget-wide v4, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->r:J

    invoke-interface {v0, v3, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/fS;->a(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/fY;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 74
    :cond_1
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->e:Lcom/google/vr/sdk/widgets/video/deps/fS;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->q:Ljava/lang/String;

    iget-wide v4, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->r:J

    invoke-interface {v0, v3, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/fS;->b(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/fY;

    move-result-object v0

    :goto_0
    const-wide/16 v3, -0x1

    if-nez v0, :cond_2

    .line 76
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iput-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 77
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->o:Landroid/net/Uri;

    iget-wide v7, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->r:J

    iget-wide v9, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J

    iget-object v11, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->q:Ljava/lang/String;

    iget v12, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->p:I

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    goto :goto_2

    .line 78
    :cond_2
    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fY;->d:Z

    if-eqz v5, :cond_4

    .line 79
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fY;->e:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 80
    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->r:J

    iget-wide v8, v0, Lcom/google/vr/sdk/widgets/video/deps/fY;->b:J

    sub-long v10, v5, v8

    .line 81
    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fY;->c:J

    sub-long/2addr v5, v10

    .line 82
    iget-wide v8, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_3

    .line 83
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_3
    move-wide v12, v5

    .line 84
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-wide v8, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->r:J

    iget-object v14, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->q:Ljava/lang/String;

    iget v15, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->p:I

    move-object v6, v0

    invoke-direct/range {v6 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 85
    iget-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->f:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iput-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-object v5, v0

    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fY;->a()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 88
    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J

    goto :goto_1

    .line 89
    :cond_5
    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fY;->c:J

    .line 90
    iget-wide v7, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J

    cmp-long v9, v7, v3

    if-eqz v9, :cond_6

    .line 91
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_6
    :goto_1
    move-wide v11, v5

    .line 92
    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-object v8, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->o:Landroid/net/Uri;

    iget-wide v9, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->r:J

    iget-object v13, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->q:Ljava/lang/String;

    iget v14, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->p:I

    move-object v7, v5

    invoke-direct/range {v7 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 93
    iget-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->g:Lcom/google/vr/sdk/widgets/video/deps/fv;

    if-eqz v6, :cond_7

    .line 94
    iput-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 95
    iput-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->t:Lcom/google/vr/sdk/widgets/video/deps/fY;

    goto :goto_2

    .line 96
    :cond_7
    iget-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iput-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 97
    iget-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->e:Lcom/google/vr/sdk/widgets/video/deps/fS;

    invoke-interface {v6, v0}, Lcom/google/vr/sdk/widgets/video/deps/fS;->a(Lcom/google/vr/sdk/widgets/video/deps/fY;)V

    .line 98
    :goto_2
    iget-wide v6, v5, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    cmp-long v0, v6, v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_8

    move v0, v6

    goto :goto_3

    :cond_8
    move v0, v7

    :goto_3
    iput-boolean v0, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->n:Z

    const-wide/16 v8, 0x0

    .line 101
    :try_start_1
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    if-nez p1, :cond_a

    .line 105
    iget-boolean v6, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->n:Z

    if-eqz v6, :cond_a

    move-object v6, v0

    :goto_4
    if-eqz v6, :cond_a

    .line 108
    instance-of v10, v6, Lcom/google/vr/sdk/widgets/video/deps/fw;

    if-eqz v10, :cond_9

    .line 109
    move-object v10, v6

    check-cast v10, Lcom/google/vr/sdk/widgets/video/deps/fw;

    iget v10, v10, Lcom/google/vr/sdk/widgets/video/deps/fw;->b:I

    if-nez v10, :cond_9

    goto :goto_5

    .line 113
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    goto :goto_4

    :cond_a
    move-object v2, v0

    :goto_5
    if-nez v2, :cond_c

    move v6, v7

    .line 116
    :goto_6
    iget-boolean v0, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->n:Z

    if-eqz v0, :cond_b

    cmp-long v0, v8, v3

    if-eqz v0, :cond_b

    .line 117
    iput-wide v8, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J

    .line 118
    iget-wide v2, v5, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    iget-wide v4, v1, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/fV;->a(J)V

    :cond_b
    return v6

    .line 115
    :cond_c
    throw v2
.end method

.method private c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 125
    :try_start_0
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a()V

    .line 126
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->t:Lcom/google/vr/sdk/widgets/video/deps/fY;

    if-eqz v0, :cond_1

    .line 129
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->e:Lcom/google/vr/sdk/widgets/video/deps/fS;

    invoke-interface {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/fS;->a(Lcom/google/vr/sdk/widgets/video/deps/fY;)V

    .line 130
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->t:Lcom/google/vr/sdk/widgets/video/deps/fY;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 131
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->t:Lcom/google/vr/sdk/widgets/video/deps/fY;

    if-eqz v2, :cond_2

    .line 132
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->e:Lcom/google/vr/sdk/widgets/video/deps/fS;

    invoke-interface {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/fS;->a(Lcom/google/vr/sdk/widgets/video/deps/fY;)V

    .line 133
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->t:Lcom/google/vr/sdk/widgets/video/deps/fY;

    :cond_2
    throw v0
.end method

.method private d()V
    .locals 7

    .line 138
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->i:Lcom/google/vr/sdk/widgets/video/deps/fV$a;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->w:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->e:Lcom/google/vr/sdk/widgets/video/deps/fS;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/fS;->b()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->w:J

    invoke-interface {v0, v1, v2, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/fV$a;->a(JJ)V

    .line 140
    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->w:J

    :cond_0
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 38
    :cond_0
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 40
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a([BII)I

    move-result v1

    const-wide/16 v5, -0x1

    if-ltz v1, :cond_3

    .line 42
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->f:Lcom/google/vr/sdk/widgets/video/deps/fv;

    if-ne p1, p2, :cond_2

    .line 43
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->w:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->w:J

    .line 44
    :cond_2
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->r:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->r:J

    .line 45
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J

    cmp-long p1, p1, v5

    if-eqz p1, :cond_6

    .line 46
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J

    goto :goto_0

    .line 47
    :cond_3
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->n:Z

    if-eqz v2, :cond_4

    .line 48
    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->r:J

    invoke-direct {p0, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/fV;->a(J)V

    .line 49
    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J

    .line 50
    :cond_4
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fV;->c()V

    .line 51
    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J

    cmp-long v2, v7, v3

    if-gtz v2, :cond_5

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_6

    .line 52
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fV;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fV;->a([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_6
    :goto_0
    return v1

    :catch_0
    move-exception p1

    .line 56
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fV;->a(Ljava/io/IOException;)V

    .line 57
    throw p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    :try_start_0
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->o:Landroid/net/Uri;

    .line 20
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->i:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->p:I

    .line 21
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/fZ;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->q:Ljava/lang/String;

    .line 22
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->r:J

    .line 23
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->k:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->u:Z

    if-nez v0, :cond_1

    :cond_0
    iget-wide v5, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->l:Z

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->v:Z

    .line 24
    iget-wide v5, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->v:Z

    if-eqz v0, :cond_3

    goto :goto_1

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->e:Lcom/google/vr/sdk/widgets/video/deps/fS;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->q:Ljava/lang/String;

    invoke-interface {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/fS;->b(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_6

    .line 28
    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-lez p1, :cond_4

    goto :goto_2

    .line 30
    :cond_4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fw;

    invoke-direct {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fw;-><init>(I)V

    throw p1

    .line 25
    :cond_5
    :goto_1
    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J

    .line 31
    :cond_6
    :goto_2
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fV;->a(Z)Z

    .line 32
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->s:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 34
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fV;->a(Ljava/io/IOException;)V

    .line 35
    throw p1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->o:Landroid/net/Uri;

    .line 60
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fV;->d()V

    .line 61
    :try_start_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fV;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 64
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fV;->a(Ljava/io/IOException;)V

    .line 65
    throw v0
.end method

.method public b()Landroid/net/Uri;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->m:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    if-ne v0, v1, :cond_0

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->b()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fV;->o:Landroid/net/Uri;

    :goto_0
    return-object v0
.end method
