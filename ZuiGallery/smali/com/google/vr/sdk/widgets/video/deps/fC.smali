.class public final Lcom/google/vr/sdk/widgets/video/deps/fC;
.super Ljava/lang/Object;
.source "DefaultDataSourceFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv$a;


# instance fields
.field private final a:Landroid/content/Context;

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

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/fv$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/fQ;Lcom/google/vr/sdk/widgets/video/deps/fv$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/fv$a;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fC;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fC;->b:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    .line 8
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fC;->c:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/fC;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/fQ;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/fQ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            ">;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fE;

    invoke-direct {v0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fE;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/fQ;)V

    invoke-direct {p0, p1, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/fC;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/fQ;Lcom/google/vr/sdk/widgets/video/deps/fv$a;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/google/vr/sdk/widgets/video/deps/fv;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fC;->b()Lcom/google/vr/sdk/widgets/video/deps/fB;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/fB;
    .locals 4

    .line 10
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fB;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fC;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fC;->b:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fC;->c:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/fv$a;->a()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/fB;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/fQ;Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    return-object v0
.end method
