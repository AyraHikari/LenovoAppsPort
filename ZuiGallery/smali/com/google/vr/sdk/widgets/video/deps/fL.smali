.class public final Lcom/google/vr/sdk/widgets/video/deps/fL;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fJ$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fL$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/fJ$c;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/fy;

.field public final b:I

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/fL$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/fL$a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile f:Z

.field private volatile g:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;ILcom/google/vr/sdk/widgets/video/deps/fL$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            "Landroid/net/Uri;",
            "I",
            "Lcom/google/vr/sdk/widgets/video/deps/fL$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fy;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/fL;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;ILcom/google/vr/sdk/widgets/video/deps/fL$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;ILcom/google/vr/sdk/widgets/video/deps/fL$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fv;",
            "Lcom/google/vr/sdk/widgets/video/deps/fy;",
            "I",
            "Lcom/google/vr/sdk/widgets/video/deps/fL$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fL;->c:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 5
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fL;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    .line 6
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fL;->b:I

    .line 7
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fL;->d:Lcom/google/vr/sdk/widgets/video/deps/fL$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fL;->f:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fL;->f:Z

    return v0
.end method

.method public final c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fx;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fL;->c:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fL;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fx;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;)V

    .line 15
    :try_start_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fx;->b()V

    .line 16
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fL;->d:Lcom/google/vr/sdk/widgets/video/deps/fL$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fL;->c:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/fv;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/fL$a;->b(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fL;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fx;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fL;->g:J

    .line 18
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 20
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fx;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fL;->g:J

    .line 21
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fL;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fL;->g:J

    return-wide v0
.end method
