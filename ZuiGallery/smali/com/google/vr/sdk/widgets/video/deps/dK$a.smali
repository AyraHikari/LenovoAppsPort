.class public Lcom/google/vr/sdk/widgets/video/deps/dK$a;
.super Lcom/google/vr/sdk/widgets/video/deps/dK;
.source "Representation.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/dA;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final h:Lcom/google/vr/sdk/widgets/video/deps/dM$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM$a;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/dM$a;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dH;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/dK;-><init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/dK$1;)V

    move-object v1, p6

    .line 2
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dK$a;->h:Lcom/google/vr/sdk/widgets/video/deps/dM$a;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dK$a;->h:Lcom/google/vr/sdk/widgets/video/deps/dM$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->b()I

    move-result v0

    return v0
.end method

.method public a(J)I
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dK$a;->h:Lcom/google/vr/sdk/widgets/video/deps/dM$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->a(J)I

    move-result p1

    return p1
.end method

.method public a(JJ)I
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dK$a;->h:Lcom/google/vr/sdk/widgets/video/deps/dM$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->a(JJ)I

    move-result p1

    return p1
.end method

.method public a(I)J
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dK$a;->h:Lcom/google/vr/sdk/widgets/video/deps/dM$a;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(IJ)J
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dK$a;->h:Lcom/google/vr/sdk/widgets/video/deps/dM$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->a(IJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(I)Lcom/google/vr/sdk/widgets/video/deps/dJ;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dK$a;->h:Lcom/google/vr/sdk/widgets/video/deps/dM$a;

    invoke-virtual {v0, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dK;I)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dK$a;->h:Lcom/google/vr/sdk/widgets/video/deps/dM$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->c()Z

    move-result v0

    return v0
.end method

.method public d()Lcom/google/vr/sdk/widgets/video/deps/dJ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lcom/google/vr/sdk/widgets/video/deps/dA;
    .locals 0

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
