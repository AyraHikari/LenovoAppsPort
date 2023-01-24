.class public final Lcom/google/vr/sdk/widgets/video/deps/fH;
.super Ljava/lang/Object;
.source "FileDataSourceFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv$a;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fG;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fH;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fQ;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fQ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fG;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fH;->a:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/vr/sdk/widgets/video/deps/fv;
    .locals 2

    .line 6
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fG;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fH;->a:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fG;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fQ;)V

    return-object v0
.end method
