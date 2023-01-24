.class public abstract Lcom/google/vr/sdk/widgets/video/deps/fk;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fk$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/vr/sdk/widgets/video/deps/fk$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a([Lcom/google/vr/sdk/widgets/video/deps/v;Lcom/google/vr/sdk/widgets/video/deps/di;)Lcom/google/vr/sdk/widgets/video/deps/fl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation
.end method

.method public final a(Lcom/google/vr/sdk/widgets/video/deps/fk$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->a:Lcom/google/vr/sdk/widgets/video/deps/fk$a;

    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method protected final d()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->a:Lcom/google/vr/sdk/widgets/video/deps/fk$a;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->d()V

    :cond_0
    return-void
.end method
