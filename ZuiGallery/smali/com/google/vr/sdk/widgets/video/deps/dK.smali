.class public abstract Lcom/google/vr/sdk/widgets/video/deps/dK;
.super Ljava/lang/Object;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/dK$a;,
        Lcom/google/vr/sdk/widgets/video/deps/dK$b;
    }
.end annotation


# static fields
.field public static final d_:J = -0x1L


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Lcom/google/vr/sdk/widgets/video/deps/m;

.field public final e:Ljava/lang/String;

.field public final f:J

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dH;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/dJ;


# direct methods
.method private constructor <init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/dM;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dH;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dK;->b:Ljava/lang/String;

    .line 10
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dK;->c:J

    .line 11
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dK;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 12
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/dK;->e:Ljava/lang/String;

    if-nez p7, :cond_0

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dK;->g:Ljava/util/List;

    .line 15
    invoke-virtual {p6, p0}, Lcom/google/vr/sdk/widgets/video/deps/dM;->a(Lcom/google/vr/sdk/widgets/video/deps/dK;)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dK;->h:Lcom/google/vr/sdk/widgets/video/deps/dJ;

    .line 16
    invoke-virtual {p6}, Lcom/google/vr/sdk/widgets/video/deps/dM;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dK;->f:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/dK$1;)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p7}, Lcom/google/vr/sdk/widgets/video/deps/dK;-><init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM;Ljava/util/List;)V

    return-void
.end method

.method public static a(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM;)Lcom/google/vr/sdk/widgets/video/deps/dK;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/dK;->a(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM;Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/dK;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM;Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/dK;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/dM;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dH;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/dK;"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-static/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/dK;->a(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM;Ljava/util/List;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dK;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM;Ljava/util/List;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/dK;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/dM;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dH;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/dK;"
        }
    .end annotation

    move-object/from16 v0, p5

    .line 3
    instance-of v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dM$e;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/dK$b;

    move-object v8, v0

    check-cast v8, Lcom/google/vr/sdk/widgets/video/deps/dM$e;

    const-wide/16 v11, -0x1

    move-object v2, v1

    move-object v3, p0

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/dK$b;-><init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM$e;Ljava/util/List;Ljava/lang/String;J)V

    return-object v1

    .line 5
    :cond_0
    instance-of v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/dK$a;

    move-object v8, v0

    check-cast v8, Lcom/google/vr/sdk/widgets/video/deps/dM$a;

    move-object v2, v1

    move-object v3, p0

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/dK$a;-><init>(Ljava/lang/String;JLcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dM$a;Ljava/util/List;)V

    return-object v1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c()Lcom/google/vr/sdk/widgets/video/deps/dJ;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dK;->h:Lcom/google/vr/sdk/widgets/video/deps/dJ;

    return-object v0
.end method

.method public abstract d()Lcom/google/vr/sdk/widgets/video/deps/dJ;
.end method

.method public abstract e()Lcom/google/vr/sdk/widgets/video/deps/dA;
.end method

.method public abstract f()Ljava/lang/String;
.end method
