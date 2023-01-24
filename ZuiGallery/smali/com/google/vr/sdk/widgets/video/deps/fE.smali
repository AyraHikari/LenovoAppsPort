.class public final Lcom/google/vr/sdk/widgets/video/deps/fE;
.super Lcom/google/vr/sdk/widgets/video/deps/fI$a;
.source "DefaultHttpDataSourceFactory.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/fQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fE;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/fQ;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/fQ;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            ">;)V"
        }
    .end annotation

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/fE;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/fQ;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/fQ;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            ">;IIZ)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fI$a;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fE;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fE;->b:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    .line 8
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fE;->c:I

    .line 9
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fE;->d:I

    .line 10
    iput-boolean p5, p0, Lcom/google/vr/sdk/widgets/video/deps/fE;->e:Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/vr/sdk/widgets/video/deps/fI$f;)Lcom/google/vr/sdk/widgets/video/deps/fD;
    .locals 9

    .line 12
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/fD;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fE;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fE;->b:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fE;->c:I

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fE;->d:I

    iget-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fE;->e:Z

    const/4 v2, 0x0

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fD;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/gC;Lcom/google/vr/sdk/widgets/video/deps/fQ;IIZLcom/google/vr/sdk/widgets/video/deps/fI$f;)V

    return-object v8
.end method

.method protected synthetic b(Lcom/google/vr/sdk/widgets/video/deps/fI$f;)Lcom/google/vr/sdk/widgets/video/deps/fI;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fE;->a(Lcom/google/vr/sdk/widgets/video/deps/fI$f;)Lcom/google/vr/sdk/widgets/video/deps/fD;

    move-result-object p1

    return-object p1
.end method
