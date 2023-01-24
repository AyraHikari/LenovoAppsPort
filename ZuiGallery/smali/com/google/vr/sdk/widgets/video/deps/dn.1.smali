.class public final Lcom/google/vr/sdk/widgets/video/deps/dn;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/au;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/dn$a;,
        Lcom/google/vr/sdk/widgets/video/deps/dn$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/as;

.field private final b:I

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/dn$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lcom/google/vr/sdk/widgets/video/deps/dn$b;

.field private g:Lcom/google/vr/sdk/widgets/video/deps/az;

.field private h:[Lcom/google/vr/sdk/widgets/video/deps/m;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/as;ILcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->a:Lcom/google/vr/sdk/widgets/video/deps/as;

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->b:I

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 5
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->d:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dn$a;

    if-nez v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->h:[Lcom/google/vr/sdk/widgets/video/deps/m;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 21
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dn$a;

    .line 22
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->b:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, p1, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/dn$a;-><init>(IILcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 23
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->f:Lcom/google/vr/sdk/widgets/video/deps/dn$b;

    invoke-virtual {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dn$b;)V

    .line 24
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public a()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/m;

    const/4 v1, 0x0

    .line 27
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 28
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/dn$a;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->h:[Lcom/google/vr/sdk/widgets/video/deps/m;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/az;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->g:Lcom/google/vr/sdk/widgets/video/deps/az;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dn$b;)V
    .locals 3

    .line 9
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->f:Lcom/google/vr/sdk/widgets/video/deps/dn$b;

    .line 10
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->e:Z

    if-nez v0, :cond_0

    .line 11
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->a:Lcom/google/vr/sdk/widgets/video/deps/as;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/as;->a(Lcom/google/vr/sdk/widgets/video/deps/au;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->e:Z

    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->a:Lcom/google/vr/sdk/widgets/video/deps/as;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/as;->a(JJ)V

    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 15
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/dn$a;

    invoke-virtual {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/dn$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dn$b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/az;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->g:Lcom/google/vr/sdk/widgets/video/deps/az;

    return-object v0
.end method

.method public c()[Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dn;->h:[Lcom/google/vr/sdk/widgets/video/deps/m;

    return-object v0
.end method
