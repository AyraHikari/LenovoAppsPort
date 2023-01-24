.class Lcom/google/vr/sdk/widgets/video/deps/df$1;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/df;->a(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/google/vr/sdk/widgets/video/deps/df;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/df;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/df$1;->b:Lcom/google/vr/sdk/widgets/video/deps/df;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/df$1;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df$1;->b:Lcom/google/vr/sdk/widgets/video/deps/df;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/df;->b(Lcom/google/vr/sdk/widgets/video/deps/df;)Lcom/google/vr/sdk/widgets/video/deps/dg$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/df$1;->b:Lcom/google/vr/sdk/widgets/video/deps/df;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/df;->a(Lcom/google/vr/sdk/widgets/video/deps/df;)I

    move-result v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/df$1;->a:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dg$a;->a(ILjava/io/IOException;)V

    return-void
.end method
