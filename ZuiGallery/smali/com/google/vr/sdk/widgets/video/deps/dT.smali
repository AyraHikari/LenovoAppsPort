.class public final Lcom/google/vr/sdk/widgets/video/deps/dT;
.super Ljava/lang/Object;
.source "DefaultHlsDataSourceFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/dV;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fv$a;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dT;->a:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/fv;
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dT;->a:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/fv$a;->a()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object p1

    return-object p1
.end method
