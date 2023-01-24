.class public final Lcom/google/vr/sdk/widgets/video/deps/fU;
.super Ljava/lang/Object;
.source "CacheDataSinkFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fu$a;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fS;

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fS;J)V
    .locals 1

    const/16 v0, 0x5000

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/fU;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;JI)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fS;JI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fU;->a:Lcom/google/vr/sdk/widgets/video/deps/fS;

    .line 5
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fU;->b:J

    .line 6
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fU;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/vr/sdk/widgets/video/deps/fu;
    .locals 5

    .line 8
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fT;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fU;->a:Lcom/google/vr/sdk/widgets/video/deps/fS;

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fU;->b:J

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fU;->c:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/fT;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;JI)V

    return-object v0
.end method
