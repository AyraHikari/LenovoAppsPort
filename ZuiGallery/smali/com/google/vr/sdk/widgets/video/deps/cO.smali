.class public final Lcom/google/vr/sdk/widgets/video/deps/cO;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cW;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cO$a;
    }
.end annotation


# instance fields
.field private final a:[Lcom/google/vr/sdk/widgets/video/deps/cW;

.field private final b:[Lcom/google/vr/sdk/widgets/video/deps/z;

.field private final c:[Ljava/lang/Object;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/vr/sdk/widgets/video/deps/cV;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:[Z

.field private final f:Z

.field private g:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

.field private h:Lcom/google/vr/sdk/widgets/video/deps/cO$a;

.field private i:Lcom/google/vr/sdk/widgets/video/deps/dd;


# direct methods
.method public varargs constructor <init>(ZLcom/google/vr/sdk/widgets/video/deps/dd;[Lcom/google/vr/sdk/widgets/video/deps/cW;)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p3, v2

    .line 7
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/dd;->a()I

    move-result v0

    array-length v2, p3

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 10
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->a:[Lcom/google/vr/sdk/widgets/video/deps/cW;

    .line 11
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->f:Z

    .line 12
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->i:Lcom/google/vr/sdk/widgets/video/deps/dd;

    .line 13
    array-length p1, p3

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/z;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->b:[Lcom/google/vr/sdk/widgets/video/deps/z;

    .line 14
    array-length p1, p3

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->c:[Ljava/lang/Object;

    .line 15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->d:Ljava/util/Map;

    .line 16
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/cO;->a([Lcom/google/vr/sdk/widgets/video/deps/cW;)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->e:[Z

    return-void
.end method

.method public varargs constructor <init>(Z[Lcom/google/vr/sdk/widgets/video/deps/cW;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dd$a;

    array-length v1, p2

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dd$a;-><init>(I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/cO;-><init>(ZLcom/google/vr/sdk/widgets/video/deps/dd;[Lcom/google/vr/sdk/widgets/video/deps/cW;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/cW;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cO;-><init>(Z[Lcom/google/vr/sdk/widgets/video/deps/cW;)V

    return-void
.end method

.method private a(ILcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->b:[Lcom/google/vr/sdk/widgets/video/deps/z;

    aput-object p2, v0, p1

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->c:[Ljava/lang/Object;

    aput-object p3, v0, p1

    add-int/lit8 v0, p1, 0x1

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->a:[Lcom/google/vr/sdk/widgets/video/deps/cW;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 50
    aget-object v2, v1, v0

    aget-object v1, v1, p1

    if-ne v2, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->b:[Lcom/google/vr/sdk/widgets/video/deps/z;

    aput-object p2, v1, v0

    .line 52
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->c:[Ljava/lang/Object;

    aput-object p3, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->b:[Lcom/google/vr/sdk/widgets/video/deps/z;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_3

    aget-object v0, p1, p3

    if-nez v0, :cond_2

    return-void

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 58
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cO$a;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->b:[Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {p2}, [Lcom/google/vr/sdk/widgets/video/deps/z;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->f:Z

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->i:Lcom/google/vr/sdk/widgets/video/deps/dd;

    invoke-direct {p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/cO$a;-><init>([Lcom/google/vr/sdk/widgets/video/deps/z;ZLcom/google/vr/sdk/widgets/video/deps/dd;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->h:Lcom/google/vr/sdk/widgets/video/deps/cO$a;

    .line 59
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->g:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->c:[Ljava/lang/Object;

    invoke-virtual {p3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/cW$a;->a(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cO;ILcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cO;->a(ILcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V

    return-void
.end method

.method private static a([Lcom/google/vr/sdk/widgets/video/deps/cW;)[Z
    .locals 5

    .line 61
    array-length v0, p0

    new-array v0, v0, [Z

    .line 62
    new-instance v1, Ljava/util/IdentityHashMap;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    const/4 v2, 0x0

    .line 63
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 64
    aget-object v3, p0, v2

    .line 65
    invoke-virtual {v1, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 66
    invoke-virtual {v1, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    .line 67
    aput-boolean v3, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->h:Lcom/google/vr/sdk/widgets/video/deps/cO$a;

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->a(I)I

    move-result v0

    .line 33
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->h:Lcom/google/vr/sdk/widgets/video/deps/cO$a;

    .line 34
    invoke-virtual {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->d(I)I

    move-result v2

    sub-int/2addr p1, v2

    invoke-direct {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;-><init>(I)V

    .line 35
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->a:[Lcom/google/vr/sdk/widgets/video/deps/cW;

    aget-object p1, p1, v0

    invoke-interface {p1, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->a:[Lcom/google/vr/sdk/widgets/video/deps/cW;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 28
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->e:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    .line 29
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 39
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->a:[Lcom/google/vr/sdk/widgets/video/deps/cW;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/h;ZLcom/google/vr/sdk/widgets/video/deps/cW$a;)V
    .locals 2

    .line 18
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->g:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    .line 19
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->a:[Lcom/google/vr/sdk/widgets/video/deps/cW;

    array-length p2, p2

    if-nez p2, :cond_0

    .line 20
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/z;->a:Lcom/google/vr/sdk/widgets/video/deps/z;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cW$a;->a(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    move p3, p2

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->a:[Lcom/google/vr/sdk/widgets/video/deps/cW;

    array-length v1, v0

    if-ge p3, v1, :cond_2

    .line 22
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->e:[Z

    aget-boolean v1, v1, p3

    if-nez v1, :cond_1

    .line 24
    aget-object v0, v0, p3

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cO$1;

    invoke-direct {v1, p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/cO$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cO;I)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/h;ZLcom/google/vr/sdk/widgets/video/deps/cW$a;)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->a:[Lcom/google/vr/sdk/widgets/video/deps/cW;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 43
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cO;->e:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    .line 44
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/cW;->b()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
