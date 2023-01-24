.class public final Lcom/google/vr/sdk/widgets/video/deps/cY;
.super Ljava/lang/Object;
.source "MergingMediaSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cW;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cY$a;
    }
.end annotation


# static fields
.field private static final a:I = -0x1


# instance fields
.field private final b:[Lcom/google/vr/sdk/widgets/video/deps/cW;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/cW;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/z$b;

.field private e:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

.field private f:Lcom/google/vr/sdk/widgets/video/deps/z;

.field private g:Ljava/lang/Object;

.field private h:I

.field private i:Lcom/google/vr/sdk/widgets/video/deps/cY$a;


# direct methods
.method public varargs constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/cW;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->b:[Lcom/google/vr/sdk/widgets/video/deps/cW;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->c:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/z$b;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->d:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->h:I

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/z;)Lcom/google/vr/sdk/widgets/video/deps/cY$a;
    .locals 4

    .line 44
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->b()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 46
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->d:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    invoke-virtual {p1, v2, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$b;Z)Lcom/google/vr/sdk/widgets/video/deps/z$b;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/vr/sdk/widgets/video/deps/z$b;->e:Z

    if-eqz v3, :cond_0

    .line 47
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cY$a;

    invoke-direct {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/cY$a;-><init>(I)V

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 50
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->c()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->h:I

    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->c()I

    move-result p1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->h:I

    if-eq p1, v0, :cond_3

    .line 52
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cY$a;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cY$a;-><init>(I)V

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(ILcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->i:Lcom/google/vr/sdk/widgets/video/deps/cY$a;

    if-nez v0, :cond_0

    .line 34
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/cY;->a(Lcom/google/vr/sdk/widgets/video/deps/z;)Lcom/google/vr/sdk/widgets/video/deps/cY$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->i:Lcom/google/vr/sdk/widgets/video/deps/cY$a;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->i:Lcom/google/vr/sdk/widgets/video/deps/cY$a;

    if-eqz v0, :cond_1

    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->b:[Lcom/google/vr/sdk/widgets/video/deps/cW;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez p1, :cond_2

    .line 39
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->f:Lcom/google/vr/sdk/widgets/video/deps/z;

    .line 40
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->g:Ljava/lang/Object;

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 42
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->e:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->f:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->g:Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cW$a;->a(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cY;ILcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cY;->a(ILcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->b:[Lcom/google/vr/sdk/widgets/video/deps/cW;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/vr/sdk/widgets/video/deps/cV;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 21
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->b:[Lcom/google/vr/sdk/widgets/video/deps/cW;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cX;

    invoke-direct {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/cX;-><init>([Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    return-object p1
.end method

.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->i:Lcom/google/vr/sdk/widgets/video/deps/cY$a;

    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->b:[Lcom/google/vr/sdk/widgets/video/deps/cW;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 16
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 14
    :cond_1
    throw v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 3

    .line 24
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cX;

    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->b:[Lcom/google/vr/sdk/widgets/video/deps/cW;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 26
    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/cX;->a:[Lcom/google/vr/sdk/widgets/video/deps/cV;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/h;ZLcom/google/vr/sdk/widgets/video/deps/cW$a;)V
    .locals 2

    .line 7
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->e:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    const/4 p2, 0x0

    move p3, p2

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->b:[Lcom/google/vr/sdk/widgets/video/deps/cW;

    array-length v1, v0

    if-ge p3, v1, :cond_0

    .line 10
    aget-object v0, v0, p3

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cY$1;

    invoke-direct {v1, p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/cY$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cY;I)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/h;ZLcom/google/vr/sdk/widgets/video/deps/cW$a;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cY;->b:[Lcom/google/vr/sdk/widgets/video/deps/cW;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 30
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/cW;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
