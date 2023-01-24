.class Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;
.super Ljava/lang/Object;
.source "AdaptiveMediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/fy;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/vr/sdk/widgets/video/deps/m;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:J

.field final synthetic h:J

.field final synthetic i:J

.field final synthetic j:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->j:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->b:I

    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->c:I

    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    iput p6, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->e:I

    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->f:Ljava/lang/Object;

    iput-wide p8, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->g:J

    iput-wide p10, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->h:J

    iput-wide p12, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->i:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->j:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;)Lcom/google/vr/sdk/widgets/video/deps/cJ;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->b:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->c:I

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->e:I

    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->f:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->j:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-wide v8, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->g:J

    .line 3
    invoke-static {v0, v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;J)J

    move-result-wide v8

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->j:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-wide v10, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->h:J

    .line 4
    invoke-static {v0, v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;J)J

    move-result-wide v10

    iget-wide v12, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;->i:J

    .line 5
    invoke-interface/range {v1 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/cJ;->onLoadStarted(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJ)V

    return-void
.end method
