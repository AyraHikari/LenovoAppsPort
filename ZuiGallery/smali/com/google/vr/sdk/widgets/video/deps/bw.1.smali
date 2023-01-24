.class public final Lcom/google/vr/sdk/widgets/video/deps/bw;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bO$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bw$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x4

.field public static final d:I = 0x8

.field public static final e:I = 0x10

.field public static final f:I = 0x20

.field private static final g:I = 0x86


# instance fields
.field private final h:I

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bw;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bw;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bw;->h:I

    const/16 p1, 0x20

    .line 7
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bw;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    const-string v0, "application/cea-608"

    .line 8
    invoke-static {p2, v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 9
    :cond_0
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bw;->i:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/bO$b;)Lcom/google/vr/sdk/widgets/video/deps/bL;
    .locals 14

    const/16 v0, 0x20

    .line 34
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bw;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bL;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bw;->i:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bL;-><init>(Ljava/util/List;)V

    return-object p1

    .line 36
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bO$b;->d:[B

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([B)V

    .line 37
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bw;->i:Ljava/util/List;

    .line 38
    :goto_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v1

    if-lez v1, :cond_4

    .line 39
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v1

    .line 40
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v2

    .line 41
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_3

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_3

    const/4 v5, 0x3

    .line 46
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->e(I)Ljava/lang/String;

    move-result-object v11

    .line 47
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v5

    and-int/lit16 v6, v5, 0x80

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    if-eqz v6, :cond_2

    and-int/lit8 v5, v5, 0x3f

    const-string v6, "application/cea-708"

    move v12, v5

    move-object v7, v6

    goto :goto_3

    :cond_2
    const-string v5, "application/cea-608"

    move v12, v7

    move-object v7, v5

    :goto_3
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 54
    invoke-static/range {v6 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    .line 55
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    goto :goto_0

    .line 59
    :cond_4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bL;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bL;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private a(I)Z
    .locals 1

    .line 60
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bw;->h:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/bO;",
            ">;"
        }
    .end annotation

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public a(ILcom/google/vr/sdk/widgets/video/deps/bO$b;)Lcom/google/vr/sdk/widgets/video/deps/bO;
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_d

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-eq p1, v2, :cond_b

    const/16 v2, 0x11

    if-eq p1, v2, :cond_9

    const/16 v0, 0x15

    if-eq p1, v0, :cond_8

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_6

    const/16 v0, 0x24

    if-eq p1, v0, :cond_5

    const/16 v0, 0x59

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x81

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_3

    const/16 v0, 0x86

    if-eq p1, v0, :cond_0

    const/16 v0, 0x87

    if-eq p1, v0, :cond_2

    return-object v3

    :cond_0
    const/16 p1, 0x10

    .line 28
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bw;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/bK;

    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bM;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/bM;-><init>()V

    invoke-direct {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/bK;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bJ;)V

    :goto_0
    return-object v3

    .line 20
    :cond_2
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bH;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bt;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/bO$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/bt;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bH;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bz;)V

    return-object p1

    .line 21
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bH;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bx;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/bO$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/bx;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bH;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bz;)V

    return-object p1

    .line 32
    :cond_4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bH;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/by;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/bO$b;->c:Ljava/util/List;

    invoke-direct {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/by;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bH;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bz;)V

    return-object p1

    .line 27
    :cond_5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bH;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bC;

    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/bw;->a(Lcom/google/vr/sdk/widgets/video/deps/bO$b;)Lcom/google/vr/sdk/widgets/video/deps/bL;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/bC;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bL;)V

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bH;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bz;)V

    return-object p1

    .line 23
    :cond_6
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bw;->a(I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    .line 24
    :cond_7
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/bH;

    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bB;

    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/bw;->a(Lcom/google/vr/sdk/widgets/video/deps/bO$b;)Lcom/google/vr/sdk/widgets/video/deps/bL;

    move-result-object p2

    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bw;->a(I)Z

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bw;->a(I)Z

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bB;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bL;ZZ)V

    invoke-direct {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/bH;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bz;)V

    :goto_1
    return-object v3

    .line 31
    :cond_8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bH;

    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/bD;

    invoke-direct {p2}, Lcom/google/vr/sdk/widgets/video/deps/bD;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bH;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bz;)V

    return-object p1

    .line 17
    :cond_9
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bw;->a(I)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    .line 18
    :cond_a
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/bH;

    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bE;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/bO$b;->b:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bE;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/bH;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bz;)V

    :goto_2
    return-object v3

    .line 14
    :cond_b
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bw;->a(I)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    .line 15
    :cond_c
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/bH;

    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bv;

    const/4 v0, 0x0

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/bO$b;->b:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/bv;-><init>(ZLjava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/bH;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bz;)V

    :goto_3
    return-object v3

    .line 13
    :cond_d
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bH;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bF;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/bO$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/bF;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bH;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bz;)V

    return-object p1

    .line 22
    :cond_e
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bH;

    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/bA;

    invoke-direct {p2}, Lcom/google/vr/sdk/widgets/video/deps/bA;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bH;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bz;)V

    return-object p1
.end method
