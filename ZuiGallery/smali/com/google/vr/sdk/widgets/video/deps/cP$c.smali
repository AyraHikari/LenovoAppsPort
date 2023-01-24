.class final Lcom/google/vr/sdk/widgets/video/deps/cP$c;
.super Lcom/google/vr/sdk/widgets/video/deps/z;
.source "DynamicConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;

.field private static final c:Lcom/google/vr/sdk/widgets/video/deps/z$a;


# instance fields
.field private final d:Lcom/google/vr/sdk/widgets/video/deps/z;

.field private final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->b:Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/z$a;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->c:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/z;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->d:Lcom/google/vr/sdk/widgets/video/deps/z;

    .line 3
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/z;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->d:Lcom/google/vr/sdk/widgets/video/deps/z;

    .line 7
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->d:Lcom/google/vr/sdk/widgets/video/deps/z;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    goto :goto_0

    .line 26
    :cond_1
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->b:Ljava/lang/Object;

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->e:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/z;)Lcom/google/vr/sdk/widgets/video/deps/cP$c;
    .locals 4

    .line 9
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->e:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->c()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 10
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->c:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Z)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object v1

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->e:Ljava/lang/Object;

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/cP$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Z)Lcom/google/vr/sdk/widgets/video/deps/z$a;
    .locals 9

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->d:Lcom/google/vr/sdk/widgets/video/deps/z;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 20
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->b:Ljava/lang/Object;

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-eqz p3, :cond_1

    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->b:Ljava/lang/Object;

    :cond_1
    move-object v3, p1

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p2

    invoke-virtual/range {v1 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object p1

    return-object p1

    .line 21
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Z)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 22
    iget-object p1, p2, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b:Ljava/lang/Object;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->e:Ljava/lang/Object;

    if-ne p1, p3, :cond_3

    .line 23
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->b:Ljava/lang/Object;

    iput-object p1, p2, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b:Ljava/lang/Object;

    :cond_3
    return-object p2
.end method

.method public a(ILcom/google/vr/sdk/widgets/video/deps/z$b;ZJ)Lcom/google/vr/sdk/widgets/video/deps/z$b;
    .locals 18

    move-object/from16 v0, p0

    .line 14
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->d:Lcom/google/vr/sdk/widgets/video/deps/z;

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    .line 15
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v3, v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/z$b;->a(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/vr/sdk/widgets/video/deps/z$b;

    move-result-object v1

    goto :goto_1

    :cond_1
    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$b;ZJ)Lcom/google/vr/sdk/widgets/video/deps/z$b;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public b()I
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->d:Lcom/google/vr/sdk/widgets/video/deps/z;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->b()I

    move-result v0

    :goto_0
    return v0
.end method

.method public c()I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->d:Lcom/google/vr/sdk/widgets/video/deps/z;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->c()I

    move-result v0

    :goto_0
    return v0
.end method

.method public d()Lcom/google/vr/sdk/widgets/video/deps/z;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->d:Lcom/google/vr/sdk/widgets/video/deps/z;

    return-object v0
.end method
