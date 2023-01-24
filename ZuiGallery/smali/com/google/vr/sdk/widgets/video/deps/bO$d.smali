.class public final Lcom/google/vr/sdk/widgets/video/deps/bO$d;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/bO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field private static final a:I = -0x80000000


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    const/16 v1, 0xc

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->b:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->c:I

    .line 6
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->d:I

    .line 7
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->e:I

    return-void
.end method

.method private d()V
    .locals 2

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->e:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generateNewId() must be called before retrieving ids."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 9
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->e:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->c:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->d:I

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->e:I

    .line 10
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->f:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->d()V

    .line 13
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->e:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->d()V

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->f:Ljava/lang/String;

    return-object v0
.end method
