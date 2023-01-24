.class public interface abstract Lcom/google/vr/sdk/widgets/video/deps/fI;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fI$e;,
        Lcom/google/vr/sdk/widgets/video/deps/fI$d;,
        Lcom/google/vr/sdk/widgets/video/deps/fI$c;,
        Lcom/google/vr/sdk/widgets/video/deps/fI$a;,
        Lcom/google/vr/sdk/widgets/video/deps/fI$f;,
        Lcom/google/vr/sdk/widgets/video/deps/fI$b;
    }
.end annotation


# static fields
.field public static final c:Lcom/google/vr/sdk/widgets/video/deps/gC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/gC<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fI$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/fI$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/fI;->c:Lcom/google/vr/sdk/widgets/video/deps/gC;

    return-void
.end method


# virtual methods
.method public abstract a([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fI$c;
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fI$c;
        }
    .end annotation
.end method

.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fI$c;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract d()V
.end method
