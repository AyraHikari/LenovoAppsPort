.class public final Lcom/google/vr/sdk/widgets/video/deps/cS;
.super Ljava/lang/Object;
.source "ExtractorMediaSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cR$c;
.implements Lcom/google/vr/sdk/widgets/video/deps/cW;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cS$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x3

.field public static final b:I = 0x6

.field public static final c:I = -0x1

.field public static final d:I = 0x100000


# instance fields
.field private final e:Landroid/net/Uri;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/av;

.field private final h:I

.field private final i:Landroid/os/Handler;

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/cS$a;

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/z$a;

.field private final l:Ljava/lang/String;

.field private final m:I

.field private n:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

.field private o:J

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/av;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cS$a;Ljava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->e:Landroid/net/Uri;

    .line 7
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->f:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    .line 8
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->g:Lcom/google/vr/sdk/widgets/video/deps/av;

    .line 9
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->h:I

    .line 10
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->i:Landroid/os/Handler;

    .line 11
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->j:Lcom/google/vr/sdk/widgets/video/deps/cS$a;

    .line 12
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->l:Ljava/lang/String;

    .line 13
    iput p8, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->m:I

    .line 14
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/z$a;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->k:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/av;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cS$a;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/cS;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/av;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cS$a;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/av;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cS$a;Ljava/lang/String;)V
    .locals 9

    const/4 v4, -0x1

    const/high16 v8, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/cS;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/av;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cS$a;Ljava/lang/String;I)V

    return-void
.end method

.method private b(JZ)V
    .locals 2

    .line 33
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->o:J

    .line 34
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->p:Z

    .line 35
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->n:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/de;

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->o:J

    iget-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->p:Z

    invoke-direct {p2, v0, v1, p3}, Lcom/google/vr/sdk/widgets/video/deps/de;-><init>(JZ)V

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cW$a;->a(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;
    .locals 11

    .line 20
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 21
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cR;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->e:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->f:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fv$a;->a()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->g:Lcom/google/vr/sdk/widgets/video/deps/av;

    .line 22
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/av;->a()[Lcom/google/vr/sdk/widgets/video/deps/as;

    move-result-object v3

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->h:I

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->i:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->j:Lcom/google/vr/sdk/widgets/video/deps/cS$a;

    iget-object v9, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->l:Ljava/lang/String;

    iget v10, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->m:I

    move-object v0, p1

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/cR;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv;[Lcom/google/vr/sdk/widgets/video/deps/as;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cS$a;Lcom/google/vr/sdk/widgets/video/deps/cR$c;Lcom/google/vr/sdk/widgets/video/deps/fn;Ljava/lang/String;I)V

    return-object p1
.end method

.method public a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public a(JZ)V
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 28
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->o:J

    .line 29
    :cond_0
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->o:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->p:Z

    if-eq v2, p3, :cond_2

    :cond_1
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->o:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_3

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    .line 31
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cS;->b(JZ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cR;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/cR;->f()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/h;ZLcom/google/vr/sdk/widgets/video/deps/cW$a;)V
    .locals 0

    .line 16
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->n:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p3, 0x0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cS;->b(JZ)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cS;->n:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    return-void
.end method
