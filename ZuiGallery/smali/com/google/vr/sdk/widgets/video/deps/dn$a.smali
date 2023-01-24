.class final Lcom/google/vr/sdk/widgets/video/deps/dn$a;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/aA;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private e:Lcom/google/vr/sdk/widgets/video/deps/aA;


# direct methods
.method public constructor <init>(IILcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->b:I

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->c:I

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->e:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/at;IZ)I

    move-result p1

    return p1
.end method

.method public a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V
    .locals 7

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->e:Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dn$b;)V
    .locals 2

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ar;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ar;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->e:Lcom/google/vr/sdk/widgets/video/deps/aA;

    return-void

    .line 9
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->b:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->c:I

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dn$b;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->e:Lcom/google/vr/sdk/widgets/video/deps/aA;

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->e:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p1

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->e:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    return-void
.end method
