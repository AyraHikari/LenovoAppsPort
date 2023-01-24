.class final Lcom/google/vr/sdk/widgets/video/deps/ga;
.super Ljava/lang/Object;
.source "CachedContent.java"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field private final c:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/vr/sdk/widgets/video/deps/gg;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->a:I

    .line 5
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Ljava/lang/String;

    .line 6
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->d:J

    .line 7
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->c:Ljava/util/TreeSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ga;-><init>(ILjava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->d:J

    return-wide v0
.end method

.method public a(JJ)J
    .locals 10

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ga;->b(J)Lcom/google/vr/sdk/widgets/video/deps/gg;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gg;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gg;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    iget-wide p1, v0, Lcom/google/vr/sdk/widgets/video/deps/gg;->c:J

    :goto_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    neg-long p1, p1

    return-wide p1

    :cond_1
    add-long v1, p1, p3

    .line 31
    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/gg;->b:J

    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/gg;->c:J

    add-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-gez v5, :cond_4

    .line 33
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->c:Ljava/util/TreeSet;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/gg;

    .line 34
    iget-wide v6, v5, Lcom/google/vr/sdk/widgets/video/deps/gg;->b:J

    cmp-long v6, v6, v3

    if-lez v6, :cond_3

    goto :goto_1

    .line 36
    :cond_3
    iget-wide v6, v5, Lcom/google/vr/sdk/widgets/video/deps/gg;->b:J

    iget-wide v8, v5, Lcom/google/vr/sdk/widgets/video/deps/gg;->c:J

    add-long/2addr v6, v8

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-ltz v5, :cond_2

    :cond_4
    :goto_1
    sub-long/2addr v3, p1

    .line 40
    invoke-static {v3, v4, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(J)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->d:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gg;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 11
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fY;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/fY;->e:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(J)Lcom/google/vr/sdk/widgets/video/deps/gg;
    .locals 6

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gg;->a(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/gg;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->c:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/gg;

    if-eqz v1, :cond_0

    .line 21
    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/gg;->b:J

    iget-wide v4, v1, Lcom/google/vr/sdk/widgets/video/deps/gg;->c:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    return-object v1

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->c:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/gg;

    if-nez v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gg;->b(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/gg;

    move-result-object p1

    goto :goto_0

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Ljava/lang/String;

    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gg;->b:J

    sub-long/2addr v2, p1

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gg;->a(Ljava/lang/String;JJ)Lcom/google/vr/sdk/widgets/video/deps/gg;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/gg;)Lcom/google/vr/sdk/widgets/video/deps/gg;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fS$a;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 42
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->a:I

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gg;->a(I)Lcom/google/vr/sdk/widgets/video/deps/gg;

    move-result-object v0

    .line 43
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/gg;->e:Ljava/io/File;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gg;->e:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->c:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 44
    :cond_0
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/fS$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/gg;->e:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gg;->e:Ljava/io/File;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Renaming of "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/fS$a;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/google/vr/sdk/widgets/video/deps/gg;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->c:Ljava/util/TreeSet;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 5

    .line 52
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 53
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->d:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
