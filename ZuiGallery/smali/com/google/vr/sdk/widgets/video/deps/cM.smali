.class public final Lcom/google/vr/sdk/widgets/video/deps/cM;
.super Ljava/lang/Object;
.source "ClippingMediaSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cW;
.implements Lcom/google/vr/sdk/widgets/video/deps/cW$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cM$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/cW;

.field private final b:J

.field private final c:J

.field private final d:Z

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/cL;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

.field private g:Lcom/google/vr/sdk/widgets/video/deps/cM$a;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cW;JJ)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/cM;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW;JJZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cW;JJZ)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 5
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cW;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    .line 6
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->b:J

    .line 7
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->c:J

    .line 8
    iput-boolean p6, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->d:Z

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;
    .locals 3

    .line 16
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cL;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    .line 17
    invoke-interface {v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;

    move-result-object p1

    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->d:Z

    invoke-direct {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cL;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cV;Z)V

    .line 18
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->b:J

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->c:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cL;->a(JJ)V

    return-object v0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cL;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cL;->a:Lcom/google/vr/sdk/widgets/video/deps/cV;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/h;ZLcom/google/vr/sdk/widgets/video/deps/cW$a;)V
    .locals 0

    .line 11
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->f:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    .line 12
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3, p0}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/h;ZLcom/google/vr/sdk/widgets/video/deps/cW$a;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V
    .locals 7

    .line 26
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/cM$a;

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->b:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->c:J

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/cM$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/z;JJ)V

    iput-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->g:Lcom/google/vr/sdk/widgets/video/deps/cM$a;

    .line 27
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->f:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    invoke-interface {p1, v6, p2}, Lcom/google/vr/sdk/widgets/video/deps/cW$a;->a(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/cL;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->b:J

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/cL;->a(JJ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cM;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cW;->b()V

    return-void
.end method
