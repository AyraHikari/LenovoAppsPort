.class public final Lcom/google/vr/sdk/widgets/video/deps/fN;
.super Ljava/lang/Object;
.source "PriorityDataSourceFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv$a;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/gD;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/gD;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fN;->a:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fN;->b:Lcom/google/vr/sdk/widgets/video/deps/gD;

    .line 4
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fN;->c:I

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/google/vr/sdk/widgets/video/deps/fv;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fN;->b()Lcom/google/vr/sdk/widgets/video/deps/fM;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/fM;
    .locals 4

    .line 6
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fM;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fN;->a:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/fv$a;->a()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fN;->b:Lcom/google/vr/sdk/widgets/video/deps/gD;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fN;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/fM;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/gD;I)V

    return-object v0
.end method
