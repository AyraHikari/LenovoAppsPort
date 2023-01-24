.class Lcom/google/vr/sdk/widgets/video/deps/bN$b;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/bN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/bN;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/gz;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/bN;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$b;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;-><init>([B)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$b;->b:Lcom/google/vr/sdk/widgets/video/deps/gz;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 9

    .line 5
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 9
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 11
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$b;->b:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {p1, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(Lcom/google/vr/sdk/widgets/video/deps/gz;I)V

    .line 12
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$b;->b:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v4

    .line 13
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$b;->b:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_1

    .line 15
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$b;->b:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$b;->b:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v4

    .line 17
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$b;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/bN;->a(Lcom/google/vr/sdk/widgets/video/deps/bN;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/bK;

    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/bN$c;

    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$b;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-direct {v7, v8, v4}, Lcom/google/vr/sdk/widgets/video/deps/bN$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bN;I)V

    invoke-direct {v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/bK;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bJ;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$b;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/bN;->b(Lcom/google/vr/sdk/widgets/video/deps/bN;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$b;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/bN;->c(Lcom/google/vr/sdk/widgets/video/deps/bN;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 21
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bN$b;->a:Lcom/google/vr/sdk/widgets/video/deps/bN;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/bN;->a(Lcom/google/vr/sdk/widgets/video/deps/bN;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gJ;Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V
    .locals 0

    return-void
.end method
