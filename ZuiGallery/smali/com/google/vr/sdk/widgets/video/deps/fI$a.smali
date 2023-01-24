.class public abstract Lcom/google/vr/sdk/widgets/video/deps/fI$a;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fI$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/fI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fI$f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fI$f;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/fI$f;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$a;->a:Lcom/google/vr/sdk/widgets/video/deps/fI$f;

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/google/vr/sdk/widgets/video/deps/fv;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fI$a;->b()Lcom/google/vr/sdk/widgets/video/deps/fI;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$a;->a:Lcom/google/vr/sdk/widgets/video/deps/fI$f;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fI$f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$a;->a:Lcom/google/vr/sdk/widgets/video/deps/fI$f;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fI$f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lcom/google/vr/sdk/widgets/video/deps/fI;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$a;->a:Lcom/google/vr/sdk/widgets/video/deps/fI$f;

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fI$a;->b(Lcom/google/vr/sdk/widgets/video/deps/fI$f;)Lcom/google/vr/sdk/widgets/video/deps/fI;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b(Lcom/google/vr/sdk/widgets/video/deps/fI$f;)Lcom/google/vr/sdk/widgets/video/deps/fI;
.end method

.method public final c()Lcom/google/vr/sdk/widgets/video/deps/fI$f;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$a;->a:Lcom/google/vr/sdk/widgets/video/deps/fI$f;

    return-object v0
.end method

.method public final d()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$a;->a:Lcom/google/vr/sdk/widgets/video/deps/fI$f;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fI$f;->a()V

    return-void
.end method
